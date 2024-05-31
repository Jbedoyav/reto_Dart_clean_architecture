import 'package:equatable/equatable.dart';

class Movie with EquatableMixin {
  Movie({
    this.id,
    this.title,
    this.posterPath,
  });
  final int? id;
  final String? title;
  final String? posterPath;

  @override
  List<Object?> get props => [id, title, posterPath];
}
