import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:provider/provider.dart';
import 'package:reto_28_05_2024/src/features/movies/presentation/controllers/movies_controller.dart';
import 'package:reto_28_05_2024/src/global/controller/base_controller.dart';
import 'package:reto_28_05_2024/src/utils/get_url.dart';

class PopularMoviesWidget extends StatelessWidget {
  const PopularMoviesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesController>(
        builder: (context, moviesController, child) {
      if (moviesController.state == BaseControllerStates.initial) {
        return const Center(child: CircularProgressIndicator());
      }
      if (moviesController.state == BaseControllerStates.loading) {
        return const Center(child: CircularProgressIndicator());
      }

      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: moviesController.paginationMovies?.movies.length,
          itemBuilder: (context, index) {
            final image = getUrlImage(
                moviesController.paginationMovies?.movies[index].posterPath ??
                    '');
            return Container(
                margin: const EdgeInsets.all(8.0), child: Image.network(image));
          },
        ),
      );
    });
  }
}
