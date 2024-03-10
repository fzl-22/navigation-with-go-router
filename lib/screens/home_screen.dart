import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const path = '/home';
  static const name = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(name),
      ),
      body: const Center(
        child: Text(path),
      ),
    );
  }
}
