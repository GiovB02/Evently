import 'package:flutter/material.dart';

class CreatePlanScreen extends StatelessWidget {
  const CreatePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a Plan'),
      ),
      body: const Center(
        child: Text('Create Plan Screen'),
      ),
    );
  }
}
