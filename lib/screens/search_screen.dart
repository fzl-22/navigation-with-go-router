import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  static const path = '/search';
  static const name = 'search';

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
