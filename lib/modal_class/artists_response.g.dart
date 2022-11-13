// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArtistsResponse _$$_ArtistsResponseFromJson(Map<String, dynamic> json) =>
    _$_ArtistsResponse(
      json['page'] as int?,
      (json['cast'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['crew'] as List<dynamic>?)
          ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArtistsResponseToJson(_$_ArtistsResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'cast': instance.cast,
      'crew': instance.crew,
    };
