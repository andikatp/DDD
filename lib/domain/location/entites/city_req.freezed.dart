// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CityReq _$CityReqFromJson(Map<String, dynamic> json) {
  return _CityReq.fromJson(json);
}

/// @nodoc
mixin _$CityReq {
  List<ResultsCities> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityReqCopyWith<CityReq> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityReqCopyWith<$Res> {
  factory $CityReqCopyWith(CityReq value, $Res Function(CityReq) then) =
      _$CityReqCopyWithImpl<$Res, CityReq>;
  @useResult
  $Res call({List<ResultsCities> results});
}

/// @nodoc
class _$CityReqCopyWithImpl<$Res, $Val extends CityReq>
    implements $CityReqCopyWith<$Res> {
  _$CityReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsCities>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityReqImplCopyWith<$Res> implements $CityReqCopyWith<$Res> {
  factory _$$CityReqImplCopyWith(
          _$CityReqImpl value, $Res Function(_$CityReqImpl) then) =
      __$$CityReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResultsCities> results});
}

/// @nodoc
class __$$CityReqImplCopyWithImpl<$Res>
    extends _$CityReqCopyWithImpl<$Res, _$CityReqImpl>
    implements _$$CityReqImplCopyWith<$Res> {
  __$$CityReqImplCopyWithImpl(
      _$CityReqImpl _value, $Res Function(_$CityReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$CityReqImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsCities>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityReqImpl implements _CityReq {
  const _$CityReqImpl({required final List<ResultsCities> results})
      : _results = results;

  factory _$CityReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityReqImplFromJson(json);

  final List<ResultsCities> _results;
  @override
  List<ResultsCities> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CityReq(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityReqImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityReqImplCopyWith<_$CityReqImpl> get copyWith =>
      __$$CityReqImplCopyWithImpl<_$CityReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityReqImplToJson(
      this,
    );
  }
}

abstract class _CityReq implements CityReq {
  const factory _CityReq({required final List<ResultsCities> results}) =
      _$CityReqImpl;

  factory _CityReq.fromJson(Map<String, dynamic> json) = _$CityReqImpl.fromJson;

  @override
  List<ResultsCities> get results;
  @override
  @JsonKey(ignore: true)
  _$$CityReqImplCopyWith<_$CityReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsCities _$ResultsCitiesFromJson(Map<String, dynamic> json) {
  return _ResultsCities.fromJson(json);
}

/// @nodoc
mixin _$ResultsCities {
  String get cityId => throw _privateConstructorUsedError;
  String get provinceId => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCitiesCopyWith<ResultsCities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCitiesCopyWith<$Res> {
  factory $ResultsCitiesCopyWith(
          ResultsCities value, $Res Function(ResultsCities) then) =
      _$ResultsCitiesCopyWithImpl<$Res, ResultsCities>;
  @useResult
  $Res call(
      {String cityId,
      String provinceId,
      String province,
      String type,
      String cityName,
      String postalCode});
}

/// @nodoc
class _$ResultsCitiesCopyWithImpl<$Res, $Val extends ResultsCities>
    implements $ResultsCitiesCopyWith<$Res> {
  _$ResultsCitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? provinceId = null,
    Object? province = null,
    Object? type = null,
    Object? cityName = null,
    Object? postalCode = null,
  }) {
    return _then(_value.copyWith(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultsCitiesImplCopyWith<$Res>
    implements $ResultsCitiesCopyWith<$Res> {
  factory _$$ResultsCitiesImplCopyWith(
          _$ResultsCitiesImpl value, $Res Function(_$ResultsCitiesImpl) then) =
      __$$ResultsCitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cityId,
      String provinceId,
      String province,
      String type,
      String cityName,
      String postalCode});
}

/// @nodoc
class __$$ResultsCitiesImplCopyWithImpl<$Res>
    extends _$ResultsCitiesCopyWithImpl<$Res, _$ResultsCitiesImpl>
    implements _$$ResultsCitiesImplCopyWith<$Res> {
  __$$ResultsCitiesImplCopyWithImpl(
      _$ResultsCitiesImpl _value, $Res Function(_$ResultsCitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? provinceId = null,
    Object? province = null,
    Object? type = null,
    Object? cityName = null,
    Object? postalCode = null,
  }) {
    return _then(_$ResultsCitiesImpl(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ResultsCitiesImpl implements _ResultsCities {
  const _$ResultsCitiesImpl(
      {required this.cityId,
      required this.provinceId,
      required this.province,
      required this.type,
      required this.cityName,
      required this.postalCode});

  factory _$ResultsCitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsCitiesImplFromJson(json);

  @override
  final String cityId;
  @override
  final String provinceId;
  @override
  final String province;
  @override
  final String type;
  @override
  final String cityName;
  @override
  final String postalCode;

  @override
  String toString() {
    return 'ResultsCities(cityId: $cityId, provinceId: $provinceId, province: $province, type: $type, cityName: $cityName, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsCitiesImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cityId, provinceId, province, type, cityName, postalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsCitiesImplCopyWith<_$ResultsCitiesImpl> get copyWith =>
      __$$ResultsCitiesImplCopyWithImpl<_$ResultsCitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsCitiesImplToJson(
      this,
    );
  }
}

abstract class _ResultsCities implements ResultsCities {
  const factory _ResultsCities(
      {required final String cityId,
      required final String provinceId,
      required final String province,
      required final String type,
      required final String cityName,
      required final String postalCode}) = _$ResultsCitiesImpl;

  factory _ResultsCities.fromJson(Map<String, dynamic> json) =
      _$ResultsCitiesImpl.fromJson;

  @override
  String get cityId;
  @override
  String get provinceId;
  @override
  String get province;
  @override
  String get type;
  @override
  String get cityName;
  @override
  String get postalCode;
  @override
  @JsonKey(ignore: true)
  _$$ResultsCitiesImplCopyWith<_$ResultsCitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
