import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  final List<String> movies = [
    'Movie 1',
    'Movie 2',
    'Movie 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return ListTile(
            title: Text(movie),
            onTap: () {
              GoRouter.of(context).go('/details/$index');
            },
          );
        },
      ),
    );
  }
}
