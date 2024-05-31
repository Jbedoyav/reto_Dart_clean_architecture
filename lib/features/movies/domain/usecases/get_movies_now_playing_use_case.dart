import 'package:reto_28_05_2024/features/movies/data/models/pagination_movies_model.dart';
import 'package:reto_28_05_2024/features/movies/domain/repositories/movie_repository.dart';

class GetMoviesNowPlayingUseCase {
  final MovieRepository movieRepository;

  GetMoviesNowPlayingUseCase(this.movieRepository);

  Future<PaginationMoviesModel> call() async {
    return movieRepository.getMoviesNowPlaying();
  }
}
