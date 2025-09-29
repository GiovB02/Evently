import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../data/events.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final df = DateFormat('EEE d MMM • HH:mm', 'es');

    return ListView.builder(
      itemCount: kEvents.length,
      itemBuilder: (context, index) {
        final event = kEvents[index];
        return Card(
          margin: const EdgeInsets.all(8.0),
          clipBehavior: Clip.hardEdge,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                event.imageUrl,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    const Center(child: Icon(Icons.image_not_supported)),
              ),
              ListTile(
                title: Text(event.title),
                subtitle: Text('${df.format(event.date)} • ${event.location}'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(event.description),
              ),
            ],
          ),
        );
      },
    );
  }
}


