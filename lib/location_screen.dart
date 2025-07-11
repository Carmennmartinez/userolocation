import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'save_location_manager.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text("Ubicación de ${user?.displayName ?? 'usuario'}"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, '/login');
            },
          )
        ],
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.location_on),
          label: const Text("Enviar ubicación actual"),
          onPressed: () async {
            await saveLocationToFirestore();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Ubicación enviada correctamente')),
            );
          },
        ),
      ),
    );
  }
}
