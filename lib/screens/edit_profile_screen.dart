import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  static const path = 'edit-profile';
  static const name = 'edit-profile';

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
