import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({
    required this.username,
    super.key,
  });

  final String username;

  static const path = '/forgot-password';
  static const name = 'forgot-password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('name ($username)'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16),
          children: [
            TextButton(
              onPressed: () async {
                context.pop();
              },
              child: const Text('GO BACK'),
            ),
          ],
        ),
      ),
    );
  }
}
