import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_with_gorouter/screens/edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const path = '/profile';
  static const name = 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(name),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16),
          children: [
            const Center(
              child: Text(path),
            ),
            TextButton(
              onPressed: () {
                context.pushNamed(EditProfile.name);
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
