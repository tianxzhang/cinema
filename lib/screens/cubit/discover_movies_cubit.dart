import 'package:cinema/api/repository.dart';
import 'package:cinema/modal_class/movies_response.dart';
import 'package:cinema/screens/cubit/discover_movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscoverMoviesCubit extends Cubit<DiscoverMoviesState> {
  final Repository repository;

  DiscoverMoviesCubit({required this.repository})
      : super(DiscoverMoviesLoading()) {
    fetchData();
  }

  void fetchData() async {
    MoviesResponse movies = await repository.getMovies();
    emit(DiscoverMoviesNormal(movies));
  }
}
