import 'package:cinema/api/api.dart';
import 'package:cinema/api/rest_client.dart';
import 'package:cinema/modal_class/artists_response.dart';
import 'package:cinema/modal_class/genres_response.dart';
import 'package:cinema/modal_class/movies_response.dart';

class Repository {
  final AppApi api;
  final RestClient restClient;

  Repository({required this.api, required this.restClient});

  Future<MoviesResponse> getMovies() async {
    var data = await restClient.getMovies();
    return data;
  }

  Future<GenresResponse> getGenres() async {
    var data = await restClient.getGenres();
    return data;
  }

  Future<MoviesResponse> getTopRatedMovies() async {
    var data = await restClient.getTopRatedMovies();
    return data;
  }

  Future<MoviesResponse> getNowPlayingMovies() async {
    var data = await restClient.getNowPlayingMovies();
    return data;
  }

  Future<MoviesResponse> getPopularMovies() async {
    var data = await restClient.getPopularMovies();
    return data;
  }

  Future<MoviesResponse> getMoviesForGenre(String id) async {
    var data = await restClient.getMoviesForGenre(id);
    return data;
  }

  Future<MoviesResponse> searchMovie(String query) async {
    var data = await restClient.searchMovie(query);
    return data;
  }

  Future<ArtistsResponse> getArtists(String id) async {
    var data = await restClient.getArtists(id);
    return data;
  }

}