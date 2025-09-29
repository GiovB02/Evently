import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const CircleAvatar(
              radius: 48,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/150?img=5', // avatar de prueba
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Lucía Mendoza',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            Text(
              'lucia@example.com',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit),
              label: const Text('Editar perfil'),
            ),
            const SizedBox(height: 24),

            // Datos rápidos
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.badge),
                    title: Text('Usuario'),
                    subtitle: Text('@lucia'),
                  ),
                  Divider(height: 0),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Teléfono'),
                    subtitle: Text('+503 7000 0000'),
                  ),
                  Divider(height: 0),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Ciudad'),
                    subtitle: Text('San Salvador'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
