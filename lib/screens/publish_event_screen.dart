import 'package:flutter/material.dart';

class PublishEventScreen extends StatelessWidget {
  const PublishEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Publish New Event'),
      ),
      body: const Center(
        child: Text('Publish Event Screen'),
      ),
    );
  }
}
