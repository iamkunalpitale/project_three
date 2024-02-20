import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_three/screens/home_screen.dart';
import 'package:project_three/screens/details__screen.dart';
import 'package:project_three/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

bool isLoggedIn = false;

class MyApp extends StatelessWidget {
  final router = GoRouter(
    initialLocation: '/',
    errorPageBuilder: (context, state) => MaterialPage(child: Text('Error: ${state.error}')),
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => ProfileScreen(), // Directly return ProfileScreen widget
      ),
      GoRoute(
        path: '/details/:id',
        builder: (context, state) {
          final id = state.params['id'] ?? '';
          return isLoggedIn ? DetailsScreen(id: id) : ProfileScreen();
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Nested Navigation',
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
    );
  }
}