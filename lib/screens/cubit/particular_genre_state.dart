import 'package:cinema/modal_class/movies_response.dart';
import 'package:equatable/equatable.dart';

abstract class ParticularGenreState extends Equatable {}

class ParticularGenreLoading extends ParticularGenreState {
  @override
  List<Object?> get props => [];
}

class ParticularGenreNormal extends ParticularGenreState {
  final MoviesResponse movies;

  ParticularGenreNormal(this.movies);

  @override
  List<Object?> get props => [movies];
}
