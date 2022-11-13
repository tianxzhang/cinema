import 'package:cinema/modal_class/cast.dart';
import 'package:cinema/modal_class/crew.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artists_response.freezed.dart';
part 'artists_response.g.dart';

@freezed
class ArtistsResponse with _$ArtistsResponse {
  factory ArtistsResponse(
      int? page,
      List<Cast>? cast,
      List<Crew>? crew,
      ) = _ArtistsResponse;

  factory ArtistsResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtistsResponseFromJson(json);
}
