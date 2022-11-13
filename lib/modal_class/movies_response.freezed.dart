// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviesResponse _$MoviesResponseFromJson(Map<String, dynamic> json) {
  return _MoviesResponse.fromJson(json);
}

/// @nodoc
mixin _$MoviesResponse {
  int? get page => throw _privateConstructorUsedError;
  List<MovieEntity>? get results => throw _privateConstructorUsedError;
  Dates? get dates => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesResponseCopyWith<MoviesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResponseCopyWith<$Res> {
  factory $MoviesResponseCopyWith(
          MoviesResponse value, $Res Function(MoviesResponse) then) =
      _$MoviesResponseCopyWithImpl<$Res, MoviesResponse>;
  @useResult
  $Res call(
      {int? page,
      List<MovieEntity>? results,
      Dates? dates,
      @JsonKey(name: 'total_results') int? totalResults,
      @JsonKey(name: 'total_pages') int? totalPages});

  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class _$MoviesResponseCopyWithImpl<$Res, $Val extends MoviesResponse>
    implements $MoviesResponseCopyWith<$Res> {
  _$MoviesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? dates = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DatesCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $DatesCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MoviesResponseCopyWith<$Res>
    implements $MoviesResponseCopyWith<$Res> {
  factory _$$_MoviesResponseCopyWith(
          _$_MoviesResponse value, $Res Function(_$_MoviesResponse) then) =
      __$$_MoviesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      List<MovieEntity>? results,
      Dates? dates,
      @JsonKey(name: 'total_results') int? totalResults,
      @JsonKey(name: 'total_pages') int? totalPages});

  @override
  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class __$$_MoviesResponseCopyWithImpl<$Res>
    extends _$MoviesResponseCopyWithImpl<$Res, _$_MoviesResponse>
    implements _$$_MoviesResponseCopyWith<$Res> {
  __$$_MoviesResponseCopyWithImpl(
      _$_MoviesResponse _value, $Res Function(_$_MoviesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? dates = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_$_MoviesResponse(
      freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoviesResponse
    with DiagnosticableTreeMixin
    implements _MoviesResponse {
  _$_MoviesResponse(
      this.page,
      final List<MovieEntity>? results,
      this.dates,
      @JsonKey(name: 'total_results') this.totalResults,
      @JsonKey(name: 'total_pages') this.totalPages)
      : _results = results;

  factory _$_MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MoviesResponseFromJson(json);

  @override
  final int? page;
  final List<MovieEntity>? _results;
  @override
  List<MovieEntity>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Dates? dates;
  @override
  @JsonKey(name: 'total_results')
  final int? totalResults;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoviesResponse(page: $page, results: $results, dates: $dates, totalResults: $totalResults, totalPages: $totalPages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MoviesResponse'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('results', results))
      ..add(DiagnosticsProperty('dates', dates))
      ..add(DiagnosticsProperty('totalResults', totalResults))
      ..add(DiagnosticsProperty('totalPages', totalPages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoviesResponse &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_results),
      dates,
      totalResults,
      totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoviesResponseCopyWith<_$_MoviesResponse> get copyWith =>
      __$$_MoviesResponseCopyWithImpl<_$_MoviesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviesResponseToJson(
      this,
    );
  }
}

abstract class _MoviesResponse implements MoviesResponse {
  factory _MoviesResponse(
      final int? page,
      final List<MovieEntity>? results,
      final Dates? dates,
      @JsonKey(name: 'total_results') final int? totalResults,
      @JsonKey(name: 'total_pages') final int? totalPages) = _$_MoviesResponse;

  factory _MoviesResponse.fromJson(Map<String, dynamic> json) =
      _$_MoviesResponse.fromJson;

  @override
  int? get page;
  @override
  List<MovieEntity>? get results;
  @override
  Dates? get dates;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$_MoviesResponseCopyWith<_$_MoviesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
