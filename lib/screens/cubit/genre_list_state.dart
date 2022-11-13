import 'package:cinema/modal_class/genre.dart';
import 'package:cinema/modal_class/genres_response.dart';
import 'package:equatable/equatable.dart';

abstract class GenreState extends Equatable {}

class GenreStateLoading extends GenreState {
  @override
  List<Object?> get props => [];
}

class GenreStateNormal extends GenreState {
  final List<Genre>? genres;

  GenreStateNormal(this.genres);

  @override
  List<Object?> get props => [genres];
}
