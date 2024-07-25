// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriceParams {
  String get idFrom => throw _privateConstructorUsedError;
  String get idTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceParamsCopyWith<PriceParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceParamsCopyWith<$Res> {
  factory $PriceParamsCopyWith(
          PriceParams value, $Res Function(PriceParams) then) =
      _$PriceParamsCopyWithImpl<$Res, PriceParams>;
  @useResult
  $Res call({String idFrom, String idTo});
}

/// @nodoc
class _$PriceParamsCopyWithImpl<$Res, $Val extends PriceParams>
    implements $PriceParamsCopyWith<$Res> {
  _$PriceParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFrom = null,
    Object? idTo = null,
  }) {
    return _then(_value.copyWith(
      idFrom: null == idFrom
          ? _value.idFrom
          : idFrom // ignore: cast_nullable_to_non_nullable
              as String,
      idTo: null == idTo
          ? _value.idTo
          : idTo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceParamsImplCopyWith<$Res>
    implements $PriceParamsCopyWith<$Res> {
  factory _$$PriceParamsImplCopyWith(
          _$PriceParamsImpl value, $Res Function(_$PriceParamsImpl) then) =
      __$$PriceParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idFrom, String idTo});
}

/// @nodoc
class __$$PriceParamsImplCopyWithImpl<$Res>
    extends _$PriceParamsCopyWithImpl<$Res, _$PriceParamsImpl>
    implements _$$PriceParamsImplCopyWith<$Res> {
  __$$PriceParamsImplCopyWithImpl(
      _$PriceParamsImpl _value, $Res Function(_$PriceParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFrom = null,
    Object? idTo = null,
  }) {
    return _then(_$PriceParamsImpl(
      idFrom: null == idFrom
          ? _value.idFrom
          : idFrom // ignore: cast_nullable_to_non_nullable
              as String,
      idTo: null == idTo
          ? _value.idTo
          : idTo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PriceParamsImpl implements _PriceParams {
  const _$PriceParamsImpl({required this.idFrom, required this.idTo});

  @override
  final String idFrom;
  @override
  final String idTo;

  @override
  String toString() {
    return 'PriceParams(idFrom: $idFrom, idTo: $idTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceParamsImpl &&
            (identical(other.idFrom, idFrom) || other.idFrom == idFrom) &&
            (identical(other.idTo, idTo) || other.idTo == idTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idFrom, idTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceParamsImplCopyWith<_$PriceParamsImpl> get copyWith =>
      __$$PriceParamsImplCopyWithImpl<_$PriceParamsImpl>(this, _$identity);
}

abstract class _PriceParams implements PriceParams {
  const factory _PriceParams(
      {required final String idFrom,
      required final String idTo}) = _$PriceParamsImpl;

  @override
  String get idFrom;
  @override
  String get idTo;
  @override
  @JsonKey(ignore: true)
  _$$PriceParamsImplCopyWith<_$PriceParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
