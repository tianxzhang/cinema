// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artists_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistsResponse _$ArtistsResponseFromJson(Map<String, dynamic> json) {
  return _ArtistsResponse.fromJson(json);
}

/// @nodoc
mixin _$ArtistsResponse {
  int? get page => throw _privateConstructorUsedError;
  List<Cast>? get cast => throw _privateConstructorUsedError;
  List<Crew>? get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistsResponseCopyWith<ArtistsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsResponseCopyWith<$Res> {
  factory $ArtistsResponseCopyWith(
          ArtistsResponse value, $Res Function(ArtistsResponse) then) =
      _$ArtistsResponseCopyWithImpl<$Res, ArtistsResponse>;
  @useResult
  $Res call({int? page, List<Cast>? cast, List<Crew>? crew});
}

/// @nodoc
class _$ArtistsResponseCopyWithImpl<$Res, $Val extends ArtistsResponse>
    implements $ArtistsResponseCopyWith<$Res> {
  _$ArtistsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      crew: freezed == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Crew>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArtistsResponseCopyWith<$Res>
    implements $ArtistsResponseCopyWith<$Res> {
  factory _$$_ArtistsResponseCopyWith(
          _$_ArtistsResponse value, $Res Function(_$_ArtistsResponse) then) =
      __$$_ArtistsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, List<Cast>? cast, List<Crew>? crew});
}

/// @nodoc
class __$$_ArtistsResponseCopyWithImpl<$Res>
    extends _$ArtistsResponseCopyWithImpl<$Res, _$_ArtistsResponse>
    implements _$$_ArtistsResponseCopyWith<$Res> {
  __$$_ArtistsResponseCopyWithImpl(
      _$_ArtistsResponse _value, $Res Function(_$_ArtistsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_$_ArtistsResponse(
      freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      freezed == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Crew>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistsResponse
    with DiagnosticableTreeMixin
    implements _ArtistsResponse {
  _$_ArtistsResponse(this.page, final List<Cast>? cast, final List<Crew>? crew)
      : _cast = cast,
        _crew = crew;

  factory _$_ArtistsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistsResponseFromJson(json);

  @override
  final int? page;
  final List<Cast>? _cast;
  @override
  List<Cast>? get cast {
    final value = _cast;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Crew>? _crew;
  @override
  List<Crew>? get crew {
    final value = _crew;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistsResponse(page: $page, cast: $cast, crew: $crew)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistsResponse'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('cast', cast))
      ..add(DiagnosticsProperty('crew', crew));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArtistsResponse &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArtistsResponseCopyWith<_$_ArtistsResponse> get copyWith =>
      __$$_ArtistsResponseCopyWithImpl<_$_ArtistsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistsResponseToJson(
      this,
    );
  }
}

abstract class _ArtistsResponse implements ArtistsResponse {
  factory _ArtistsResponse(
          final int? page, final List<Cast>? cast, final List<Crew>? crew) =
      _$_ArtistsResponse;

  factory _ArtistsResponse.fromJson(Map<String, dynamic> json) =
      _$_ArtistsResponse.fromJson;

  @override
  int? get page;
  @override
  List<Cast>? get cast;
  @override
  List<Crew>? get crew;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistsResponseCopyWith<_$_ArtistsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
