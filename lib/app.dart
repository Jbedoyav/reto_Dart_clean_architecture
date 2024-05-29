import 'package:flutter/material.dart';
import 'package:reto_28_05_2024/src/features/movies/presentation/pages/movies_screen.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MoviesScreen(),
    );
  }
}
