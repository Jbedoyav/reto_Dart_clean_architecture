import 'package:reto_28_05_2024/features/movies/domain/entity/movie.dart';

class MovieModel extends Movie {
  MovieModel({
    super.id,
    super.title,
    super.posterPath,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        title: json['title'],
        posterPath: json['poster_path'],
      );
}
