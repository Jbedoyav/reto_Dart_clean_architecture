import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_28_05_2024/inyection_container.dart';
import 'package:reto_28_05_2024/features/movies/presentation/controllers/movies_controller.dart';
import 'package:reto_28_05_2024/features/movies/presentation/pages/movies_screen.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MoviesController>(
          create: (context) => getIt<MoviesController>(),
        ),
      ],
      child: const MaterialApp(
        home: MoviesScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
