import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_28_05_2024/features/movies/presentation/controllers/movies_now_controller.dart';
import 'package:reto_28_05_2024/features/movies/presentation/controllers/movies_popular_controller.dart';
import 'package:reto_28_05_2024/inyection_container.dart';
import 'package:reto_28_05_2024/features/movies/presentation/pages/movies_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MoviesNowController>(
          create: (context) => getIt<MoviesNowController>(),
        ),
        ChangeNotifierProvider<MoviesPopularController>(
          create: (context) => getIt<MoviesPopularController>(),
        ),
      ],
      child: const MaterialApp(
        home: MoviesScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
