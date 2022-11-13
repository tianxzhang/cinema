import 'package:freezed_annotation/freezed_annotation.dart';
part 'cast.freezed.dart';

part 'cast.g.dart';

@freezed
class Cast with _$Cast {
  factory Cast(
      @JsonKey(name: 'adult') bool? adult,
      int? gender,
      int? id,
      @JsonKey(name: 'known_for_department') String? knownForDepartment,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'original_name') String? originalName,
      @JsonKey(name: 'popularity') num? popularity,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'cast_id') int? castId,
      @JsonKey(name: 'character') String? character,
      @JsonKey(name: 'credit_id') String? creditId,
      @JsonKey(name: 'order') int? order,
      ) = _Cast;
  factory Cast.fromJson(Map<String, dynamic> json) =>
      _$CastFromJson(json);
}