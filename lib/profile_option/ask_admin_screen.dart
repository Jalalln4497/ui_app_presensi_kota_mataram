import 'package:flutter/material.dart';

class AskAdminScreen extends StatelessWidget {
  const AskAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tanya Admin?'),
      ),
      body: const Center(
        child: Text('Tanya Admin Page'),
      ),
    );
  }
}
