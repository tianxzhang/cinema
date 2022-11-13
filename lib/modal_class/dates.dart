import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'dates.freezed.dart';

part 'dates.g.dart';

@freezed
class Dates with _$Dates {
  factory Dates(
      String? maximum,
      String? minimum
      ) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) =>
      _$DatesFromJson(json);
}
