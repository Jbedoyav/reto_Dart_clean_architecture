import 'package:flutter/material.dart';
import 'package:reto_28_05_2024/src/features/movies/domain/usecases/get_movies_now_playing_use_case.dart';

class App extends StatelessWidget {
  const App({super.key, required this.getMoviesNowPlayingUseCase});
  final GetMoviesNowPlayingUseCase getMoviesNowPlayingUseCase;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
