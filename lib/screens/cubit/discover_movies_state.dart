import 'package:cinema/modal_class/movies_response.dart';
import 'package:equatable/equatable.dart';

abstract class DiscoverMoviesState extends Equatable {}

class DiscoverMoviesLoading extends DiscoverMoviesState {
  @override
  List<Object?> get props => [];
}

class DiscoverMoviesNormal extends DiscoverMoviesState {
  final MoviesResponse movies;

  DiscoverMoviesNormal(this.movies);

  @override
  List<Object?> get props => [movies];
}
