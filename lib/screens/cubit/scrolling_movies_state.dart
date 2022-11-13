import 'package:cinema/modal_class/movies_response.dart';
import 'package:equatable/equatable.dart';

abstract class ScrollingMoviesState extends Equatable {}

class ScrollingMoviesLoading extends ScrollingMoviesState {
  @override
  List<Object?> get props => [];
}

class ScrollingMoviesNormal extends ScrollingMoviesState {
  final MoviesResponse movies;

  ScrollingMoviesNormal(this.movies);

  @override
  List<Object?> get props => [movies];
}
