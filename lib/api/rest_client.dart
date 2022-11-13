import 'package:cinema/modal_class/artists_response.dart';
import 'package:cinema/modal_class/genres_response.dart';
import 'package:cinema/modal_class/movies_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/discover/movie")
  Future<MoviesResponse> getMovies();

  @GET("/genre/movie/list")
  Future<GenresResponse> getGenres();

  @GET("/movie/top_rated")
  Future<MoviesResponse> getTopRatedMovies();

  @GET("/movie/now_playing")
  Future<MoviesResponse> getNowPlayingMovies();

  @GET("/movie/popular")
  Future<MoviesResponse> getPopularMovies();

  @GET("/discover/movie")
  Future<MoviesResponse> getMoviesForGenre(@Query('with_genres') String? withGenres);

  @GET("/search/movie")
  Future<MoviesResponse> searchMovie(@Query('query') String query);

  @GET("/movie/{movie_id}/credits")
  Future<ArtistsResponse> getArtists(@Path("movie_id") String? id);
}
