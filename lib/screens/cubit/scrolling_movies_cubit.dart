import 'package:cinema/api/repository.dart';
import 'package:cinema/modal_class/movies_response.dart';
import 'package:cinema/screens/cubit/discover_movies_state.dart';
import 'package:cinema/screens/cubit/scrolling_movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScrollingMoviesCubit extends Cubit<ScrollingMoviesState> {
  final Repository repository;
  final String title;

  ScrollingMoviesCubit({required this.repository, required this.title})
      : super(ScrollingMoviesLoading()) {
    fetchData();
  }

  void fetchData() async {
    MoviesResponse? movies;
    if(title == 'Top Rated') {
      movies = await repository.getTopRatedMovies();
    } else if(title == 'Now Playing') {
      movies = await repository.getNowPlayingMovies();
    } else {
      movies = await repository.getPopularMovies();
    }

    emit(ScrollingMoviesNormal(movies));
  }
}
