import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_with_gorouter/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const path = '/register';
  static const name = 'register';

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
            TextButton(
              onPressed: () async {
                context.goNamed(LoginScreen.name);
              },
              child: const Text('GO TO LOGIN SCREEN'),
            ),
          ],
        ),
      ),
    );
  }
}
