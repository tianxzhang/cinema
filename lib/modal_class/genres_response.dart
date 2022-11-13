import 'package:cinema/modal_class/genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'genres_response.freezed.dart';

part 'genres_response.g.dart';

@freezed
class GenresResponse with _$GenresResponse {
  factory GenresResponse(
    @JsonKey(name: 'genres') List<Genre>? genres,
  ) = _GenresResponse;

  factory GenresResponse.fromJson(Map<String, dynamic> json) =>
      _$GenresResponseFromJson(json);
}
