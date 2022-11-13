import 'package:freezed_annotation/freezed_annotation.dart';
part 'crew.freezed.dart';

part 'crew.g.dart';

@freezed
class Crew with _$Crew {
  factory Crew(
      @JsonKey(name: 'adult') bool? adult,
      int? gender,
      int? id,
      @JsonKey(name: 'known_for_department') String? knownForDepartment,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'original_name') String? originalName,
      @JsonKey(name: 'popularity') num? popularity,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'credit_id') String? creditId,
      @JsonKey(name: 'department') String? department,
      @JsonKey(name: 'job') String? job,
      ) = _Crew;
  factory Crew.fromJson(Map<String, dynamic> json) =>
      _$CrewFromJson(json);
}