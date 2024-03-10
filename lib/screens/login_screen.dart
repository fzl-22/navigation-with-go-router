import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_with_gorouter/screens/forgot_password_screen.dart';
import 'package:navigation_with_gorouter/screens/home_screen.dart';
import 'package:navigation_with_gorouter/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const path = '/login';
  static const name = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LoginScreen.name),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16),
          children: [
            TextButton(
              onPressed: () {
                context.pushNamed(
                  ForgotPasswordScreen.name,
                  extra: 'fzl-22',
                );
              },
              child: const Text('FORGOT PASSWORD'),
            ),
            TextButton(
              onPressed: () async {
                context.goNamed(RegisterScreen.name);
              },
              child: const Text('GO TO REGISTER SCREEN'),
            ),
            TextButton(
              onPressed: () async {
                context.goNamed(HomeScreen.name);
              },
              child: const Text('GO TO DASHBOARD  '),
            ),
          ],
        ),
      ),
    );
  }
}
