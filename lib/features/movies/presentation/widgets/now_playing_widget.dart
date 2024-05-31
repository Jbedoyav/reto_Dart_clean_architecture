import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:provider/provider.dart';
import 'package:reto_28_05_2024/features/movies/presentation/controllers/movies_controller.dart';
import 'package:reto_28_05_2024/core/utils/base_controller.dart';
import 'package:reto_28_05_2024/core/utils/get_url.dart';

class NowPlayingWidget extends StatelessWidget {
  const NowPlayingWidget({
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
      return Swiper(
        itemBuilder: (context, index) {
          final image = getUrlImage(
              moviesController.paginationMovies?.movies?[index].posterPath ??
                  '');
          return Image.network(image);
        },
        itemCount: moviesController.paginationMovies?.movies?.length ?? 0,
        layout: SwiperLayout.STACK,
        itemWidth: 255,
      );
    });
  }
}
