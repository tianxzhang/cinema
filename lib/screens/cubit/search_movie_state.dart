import 'package:cinema/modal_class/movies_response.dart';
import 'package:equatable/equatable.dart';

abstract class SearchMoviesState extends Equatable {}

class SearchMoviesLoading extends SearchMoviesState {
  @override
  List<Object?> get props => [];
}

class SearchMoviesNormal extends SearchMoviesState {
  final MoviesResponse movies;

  SearchMoviesNormal(this.movies);

  @override
  List<Object?> get props => [movies];
}
