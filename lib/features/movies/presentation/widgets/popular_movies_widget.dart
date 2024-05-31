import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_28_05_2024/features/movies/presentation/controllers/movies_now_controller.dart';
import 'package:reto_28_05_2024/core/utils/base_controller.dart';
import 'package:reto_28_05_2024/core/utils/get_url.dart';

class PopularMoviesWidget extends StatelessWidget {
  const PopularMoviesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesNowController>(
        builder: (context, moviesController, child) {
      if (moviesController.state == BaseControllerStates.initial ||
          moviesController.state == BaseControllerStates.loading) {
        return const Center(child: CircularProgressIndicator());
      }

      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: moviesController.paginationMovies?.movies?.length ?? 0,
        itemBuilder: (context, index) {
          final movie = moviesController.paginationMovies?.movies?[index];
          final image = getUrlImage(movie?.posterPath ?? '');
          return Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            margin: const EdgeInsets.all(8),
            child: Image.network(image),
          );
        },
      );
    });
  }
}
