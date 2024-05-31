import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:reto_28_05_2024/features/movies/presentation/controllers/movies_now_controller.dart';
import 'package:reto_28_05_2024/features/movies/presentation/controllers/movies_popular_controller.dart';
import 'package:reto_28_05_2024/features/movies/presentation/widgets/now_playing_widget.dart';
import 'package:reto_28_05_2024/features/movies/presentation/widgets/popular_movies_widget.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MoviesNowController>().getMoviesNowPlaying();
      context.read<MoviesPopularController>().getPopularMovies();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cine'),
        backgroundColor: Colors.blue,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: const SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: NowPlayingWidget(),
            ),
            Text('Populares',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: PopularMoviesWidget(),
            )),
          ],
        ),
      ),
    );
  }
}
