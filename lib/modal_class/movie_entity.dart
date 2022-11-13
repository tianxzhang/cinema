import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_entity.freezed.dart';

part 'movie_entity.g.dart';

@freezed
class MovieEntity with _$MovieEntity {
  factory MovieEntity(
      @JsonKey(name: 'poster_path') String? posterPath,
      bool? adult,
      String? overview,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'genre_ids') List<int>? genreIds,
      int? id,
      @JsonKey(name: 'original_title') String? originalTitle,
      @JsonKey(name: 'original_language') String? originalLanguage,
      String? title,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      num? popularity,
      int? voteCount,
      bool? video,
      @JsonKey(name: 'vote_average') num? voteAverage,
      ) = _MovieEntity;
  factory MovieEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieEntityFromJson(json);
}