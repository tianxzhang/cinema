import 'package:cinema/modal_class/genre.dart';
import 'package:cinema/screens/cubit/genre_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenreCubit extends Cubit<GenreState> {
  final List<int> genres;
  final List<Genre> totalGenres;

  GenreCubit({required this.genres, required this.totalGenres})
      : super(GenreStateLoading()) {
    initData();
  }

  void initData() async {
    List<Genre> genresData = [];
    totalGenres.forEach((valueGenre) {
      genres.forEach((element) {
        if (valueGenre.id == element) {
          genresData.add(valueGenre);
        }
      });
    });
    emit(GenreStateNormal(genresData));
  }
}
