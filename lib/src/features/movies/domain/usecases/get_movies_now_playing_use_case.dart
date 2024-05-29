import 'package:reto_28_05_2024/src/features/movies/domain/models/pagination_movies.dart';
import 'package:reto_28_05_2024/src/features/movies/domain/repositories/movie_repository.dart';

class GetMoviesNowPlayingUseCase {
  final MovieRepository movieRepository;

  GetMoviesNowPlayingUseCase(this.movieRepository);

  Future<PaginationMovies> call() async {
    return movieRepository.getMoviesNowPlaying();
  }
}
