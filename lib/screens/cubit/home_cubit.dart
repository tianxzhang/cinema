import 'package:cinema/api/repository.dart';
import 'package:cinema/modal_class/genres_response.dart';
import 'package:cinema/screens/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final Repository repository;
  HomeCubit({required this.repository}) : super(HomeStateLoading()) {
    fetchData();
  }

  void fetchData() async {
    GenresResponse genres = await repository.getGenres();
    emit(HomeStateNormal(genres));
  }
}
