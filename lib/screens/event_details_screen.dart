
import 'package:flutter/material.dart';
import 'package:myapp/models/event.dart';

class EventDetailsScreen extends StatelessWidget {
  final Event event;

  const EventDetailsScreen({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              event.imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    leading: const Icon(Icons.calendar_today),
                    title: Text(
                        '${event.date.day}/${event.date.month}/${event.date.year} - ${event.date.hour}:${event.date.minute}'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.location_on),
                    title: Text(event.location),
                  ),
                  const Divider(),
                  const SizedBox(height: 8),
                  Text(
                    'Descripción',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(event.description),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Recordatorio agregado!'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    icon: const Icon(Icons.alarm_add),
                    label: const Text('Agregar Recordatorio'),
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

