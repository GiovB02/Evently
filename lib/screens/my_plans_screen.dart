import 'package:flutter/material.dart';

class MyPlansScreen extends StatelessWidget {
  const MyPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mis Planes')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.event_available),
              title: Text('Plan 1'),
              subtitle: Text('Detalles de tu primer plan'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.event_available),
              title: Text('Plan 2'),
              subtitle: Text('Detalles de tu segundo plan'),
            ),
          ),
        ],
      ),
    );
  }
}
