// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoviesResponse _$$_MoviesResponseFromJson(Map<String, dynamic> json) =>
    _$_MoviesResponse(
      json['page'] as int?,
      (json['results'] as List<dynamic>?)
          ?.map((e) => MovieEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['dates'] == null
          ? null
          : Dates.fromJson(json['dates'] as Map<String, dynamic>),
      json['total_results'] as int?,
      json['total_pages'] as int?,
    );

Map<String, dynamic> _$$_MoviesResponseToJson(_$_MoviesResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'dates': instance.dates,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };
