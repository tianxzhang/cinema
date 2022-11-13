import 'package:cinema/api/repository.dart';
import 'package:cinema/modal_class/movies_response.dart';
import 'package:cinema/screens/cubit/discover_movies_state.dart';
import 'package:cinema/screens/cubit/scrolling_movies_state.dart';
import 'package:cinema/screens/cubit/search_movie_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchMoviesCubit extends Cubit<SearchMoviesState> {
  final Repository repository;
  final String query;

  SearchMoviesCubit({required this.repository, required this.query})
      : super(SearchMoviesLoading()) {
    fetchData();
  }

  void fetchData() async {
    MoviesResponse movies = await repository.searchMovie(query);
    emit(SearchMoviesNormal(movies));
  }
}
