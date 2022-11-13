import 'package:cinema/api/repository.dart';
import 'package:cinema/modal_class/movies_response.dart';
import 'package:cinema/screens/cubit/discover_movies_state.dart';
import 'package:cinema/screens/cubit/particular_genre_state.dart';
import 'package:cinema/screens/cubit/scrolling_movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ParticularGenreCubit extends Cubit<ParticularGenreState> {
  final Repository repository;
  final String id;

  ParticularGenreCubit({required this.repository, required this.id})
      : super(ParticularGenreLoading()) {
    fetchData(id);
  }

  void fetchData(String id) async {
    MoviesResponse  movies = await repository.getMoviesForGenre(id);

    emit(ParticularGenreNormal(movies));
  }
}
