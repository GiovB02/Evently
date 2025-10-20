import 'package:flutter/material.dart';
import 'package:evently/widgets/event_card.dart';

class EventExplorationScreen extends StatelessWidget {
  const EventExplorationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Exploration'),
      ),
      body: ListView(
        children: const [
          EventCard(
            title: 'Event 1',
            description: 'This is the first event.',
            imageUrl: 'https://picsum.photos/seed/picsum/200/300',
          ),
          EventCard(
            title: 'Event 2',
            description: 'This is the second event.',
            imageUrl: 'https://picsum.photos/seed/picsum/200/300',
          ),
          EventCard(
            title: 'Event 3',
            description: 'This is the third event.',
            imageUrl: 'https://picsum.photos/seed/picsum/200/300',
          ),
        ],
      ),
    );
  }
}
