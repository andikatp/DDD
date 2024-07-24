// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PriceReq _$PriceReqFromJson(Map<String, dynamic> json) {
  return _PriceReq.fromJson(json);
}

/// @nodoc
mixin _$PriceReq {
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceReqCopyWith<PriceReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceReqCopyWith<$Res> {
  factory $PriceReqCopyWith(PriceReq value, $Res Function(PriceReq) then) =
      _$PriceReqCopyWithImpl<$Res, PriceReq>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$PriceReqCopyWithImpl<$Res, $Val extends PriceReq>
    implements $PriceReqCopyWith<$Res> {
  _$PriceReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceReqImplCopyWith<$Res>
    implements $PriceReqCopyWith<$Res> {
  factory _$$PriceReqImplCopyWith(
          _$PriceReqImpl value, $Res Function(_$PriceReqImpl) then) =
      __$$PriceReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$PriceReqImplCopyWithImpl<$Res>
    extends _$PriceReqCopyWithImpl<$Res, _$PriceReqImpl>
    implements _$$PriceReqImplCopyWith<$Res> {
  __$$PriceReqImplCopyWithImpl(
      _$PriceReqImpl _value, $Res Function(_$PriceReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$PriceReqImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceReqImpl implements _PriceReq {
  const _$PriceReqImpl({required this.value});

  factory _$PriceReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceReqImplFromJson(json);

  @override
  final int value;

  @override
  String toString() {
    return 'PriceReq(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceReqImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceReqImplCopyWith<_$PriceReqImpl> get copyWith =>
      __$$PriceReqImplCopyWithImpl<_$PriceReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceReqImplToJson(
      this,
    );
  }
}

abstract class _PriceReq implements PriceReq {
  const factory _PriceReq({required final int value}) = _$PriceReqImpl;

  factory _PriceReq.fromJson(Map<String, dynamic> json) =
      _$PriceReqImpl.fromJson;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$PriceReqImplCopyWith<_$PriceReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
