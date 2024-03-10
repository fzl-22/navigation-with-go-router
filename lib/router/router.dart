import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_with_gorouter/blocs/bloc/counter_bloc.dart';
import 'package:navigation_with_gorouter/blocs/bloc/profile_bloc.dart';
import 'package:navigation_with_gorouter/providers/auth_provider.dart';
import 'package:navigation_with_gorouter/screens/cart_screen.dart';
import 'package:navigation_with_gorouter/screens/dashboard_screen.dart';
import 'package:navigation_with_gorouter/screens/edit_profile_screen.dart';
import 'package:navigation_with_gorouter/screens/forgot_password_screen.dart';
import 'package:navigation_with_gorouter/screens/home_screen.dart';
import 'package:navigation_with_gorouter/screens/login_screen.dart';
import 'package:navigation_with_gorouter/screens/profile_screen.dart';
import 'package:navigation_with_gorouter/screens/register_screen.dart';
import 'package:navigation_with_gorouter/screens/search_screen.dart';
import 'package:provider/provider.dart';

class AppRouter {
  static final _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'rootKey');
  static final _profileNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'profileKey');

  static final routerConfig = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: LoginScreen.path,
    routes: <RouteBase>[
      GoRoute(
        path: LoginScreen.path,
        name: LoginScreen.name,
        builder: (context, state) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => AuthProvider(),
            ),
            BlocProvider(
              create: (context) => ProfileBloc(),
            ),
            BlocProvider(
              create: (context) => CounterBloc(),
            ),
          ],
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: RegisterScreen.path,
        name: RegisterScreen.name,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: ForgotPasswordScreen.path,
        name: ForgotPasswordScreen.name,
        builder: (context, state) {
          final username = state.extra! as String;
          return ForgotPasswordScreen(username: username);
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => DashboardScreen(
          navigationShell: navigationShell,
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: HomeScreen.path,
                name: HomeScreen.name,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: SearchScreen.path,
                name: SearchScreen.name,
                builder: (context, state) => const SearchScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: CartScreen.path,
                name: CartScreen.name,
                builder: (context, state) => const CartScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _profileNavigatorKey,
            routes: [
              GoRoute(
                path: ProfileScreen.path,
                name: ProfileScreen.name,
                builder: (context, state) => const ProfileScreen(),
                routes: [
                  GoRoute(
                    path: EditProfile.path,
                    name: EditProfile.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) => const EditProfile(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
