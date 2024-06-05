import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_28_05_2024/config/environments/config_env.dart';
import 'package:reto_28_05_2024/features/movies/presentation/controllers/movies_now_controller.dart';
import 'package:reto_28_05_2024/features/movies/presentation/controllers/movies_popular_controller.dart';
import 'package:reto_28_05_2024/features/movies/presentation/widgets/now_playing_widget.dart';
import 'package:reto_28_05_2024/features/movies/presentation/widgets/popular_movies_widget.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

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
        title: Text(EnvInfo.appName),
        backgroundColor: EnvInfo.brandTheme.primary,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: NowPlayingWidget(),
            ),
            Text(EnvInfo.brandService,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const Expanded(
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
