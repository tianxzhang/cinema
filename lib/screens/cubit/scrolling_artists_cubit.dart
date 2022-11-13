import 'package:cinema/api/repository.dart';
import 'package:cinema/modal_class/artists_response.dart';
import 'package:cinema/modal_class/movies_response.dart';
import 'package:cinema/screens/cubit/discover_movies_state.dart';
import 'package:cinema/screens/cubit/scrolling_artists_state.dart';
import 'package:cinema/screens/cubit/scrolling_movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScrollingArtistsCubit extends Cubit<ScrollingArtistsState> {
  final Repository repository;
  final String id;

  ScrollingArtistsCubit({required this.repository, required this.id})
      : super(ScrollingArtistsLoading()) {
    fetchData();
  }

  void fetchData() async {
    ArtistsResponse? artists = await repository.getArtists(id);

    emit(ScrollingArtistsNormal(artists));
  }
}
