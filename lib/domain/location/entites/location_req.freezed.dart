// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationReq _$LocationReqFromJson(Map<String, dynamic> json) {
  return _LocationReq.fromJson(json);
}

/// @nodoc
mixin _$LocationReq {
  IList<ProvinceData> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationReqCopyWith<LocationReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationReqCopyWith<$Res> {
  factory $LocationReqCopyWith(
          LocationReq value, $Res Function(LocationReq) then) =
      _$LocationReqCopyWithImpl<$Res, LocationReq>;
  @useResult
  $Res call({IList<ProvinceData> results});
}

/// @nodoc
class _$LocationReqCopyWithImpl<$Res, $Val extends LocationReq>
    implements $LocationReqCopyWith<$Res> {
  _$LocationReqCopyWithImpl(this._value, this._then);

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
              as IList<ProvinceData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationReqImplCopyWith<$Res>
    implements $LocationReqCopyWith<$Res> {
  factory _$$LocationReqImplCopyWith(
          _$LocationReqImpl value, $Res Function(_$LocationReqImpl) then) =
      __$$LocationReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<ProvinceData> results});
}

/// @nodoc
class __$$LocationReqImplCopyWithImpl<$Res>
    extends _$LocationReqCopyWithImpl<$Res, _$LocationReqImpl>
    implements _$$LocationReqImplCopyWith<$Res> {
  __$$LocationReqImplCopyWithImpl(
      _$LocationReqImpl _value, $Res Function(_$LocationReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$LocationReqImpl(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as IList<ProvinceData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationReqImpl extends _LocationReq with DiagnosticableTreeMixin {
  const _$LocationReqImpl({required this.results}) : super._();

  factory _$LocationReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationReqImplFromJson(json);

  @override
  final IList<ProvinceData> results;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationReq(results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationReq'))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationReqImpl &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationReqImplCopyWith<_$LocationReqImpl> get copyWith =>
      __$$LocationReqImplCopyWithImpl<_$LocationReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationReqImplToJson(
      this,
    );
  }
}

abstract class _LocationReq extends LocationReq {
  const factory _LocationReq({required final IList<ProvinceData> results}) =
      _$LocationReqImpl;
  const _LocationReq._() : super._();

  factory _LocationReq.fromJson(Map<String, dynamic> json) =
      _$LocationReqImpl.fromJson;

  @override
  IList<ProvinceData> get results;
  @override
  @JsonKey(ignore: true)
  _$$LocationReqImplCopyWith<_$LocationReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
