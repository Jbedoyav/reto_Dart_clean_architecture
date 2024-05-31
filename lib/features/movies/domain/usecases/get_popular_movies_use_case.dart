import 'package:reto_28_05_2024/features/movies/data/models/pagination_movies_model.dart';
import 'package:reto_28_05_2024/features/movies/domain/repositories/movie_repository.dart';

class GetPopularMoviesUseCase {
  final MovieRepository movieRepository;

  GetPopularMoviesUseCase(this.movieRepository);

  Future<PaginationMoviesModel> call() async {
    return movieRepository.getPopularMovies();
  }
}
