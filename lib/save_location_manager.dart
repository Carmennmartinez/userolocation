import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

Future<void> saveLocationToFirestore() async {
  try {
    // 1. Verificar servicios de localización
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) throw Exception('Servicios de localización desactivados');

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) throw Exception('Permiso denegado');
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception('Permiso de localización permanentemente denegado');
    }

    // 2. Configurar precisión usando LocationSettings (nuevo estándar)
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.best,
      distanceFilter: 0,
    );

    // 3. Obtener posición actual
    Position position = await Geolocator.getCurrentPosition(
      locationSettings: locationSettings,
    );

    // 4. Crear campos para Firestore
    final now = DateTime.now();
    final geopoint = GeoPoint(position.latitude, position.longitude);
    final docId = FirebaseFirestore.instance.collection('Locations').doc().id;

    // 5. Guardar en "Locations"
    await FirebaseFirestore.instance.collection('Locations').doc(docId).set({
      'date': now,
      'location': geopoint,
    });

    // 6. Crear ID de documento yyyy-SS para "Locations_Idx"
    final year = now.year;
    final weekOfYear = int.parse(DateFormat('w').format(now));
    final idxId = '$year-${weekOfYear.toString().padLeft(2, '0')}';

    // 7. Guardar en "Locations_Idx" con merge
    await FirebaseFirestore.instance.collection('Locations_Idx').doc(idxId).set({
      docId: {
        'date': now,
        'location': geopoint,
      }
    }, SetOptions(merge: true));

    print('Datos guardados correctamente');

  } catch (e) {
    print('Error al guardar en Firestore: $e');
  }
}
