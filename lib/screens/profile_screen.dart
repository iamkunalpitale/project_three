import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            isLoggedIn = !isLoggedIn;
            GoRouter.of(context).go('/');
          },
          child: Text(isLoggedIn ? 'Logout' : 'Login'),
        ),
      ),
    );
  }
}
