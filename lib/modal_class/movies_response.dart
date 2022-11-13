import 'package:cinema/modal_class/dates.dart';
import 'package:cinema/modal_class/movie_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movies_response.freezed.dart';

part 'movies_response.g.dart';

@freezed
class MoviesResponse with _$MoviesResponse {
  factory MoviesResponse(
    int? page,
    List<MovieEntity>? results,
    Dates? dates,
    @JsonKey(name: 'total_results') int? totalResults,
    @JsonKey(name: 'total_pages') int? totalPages,
  ) = _MoviesResponse;

  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseFromJson(json);
}
