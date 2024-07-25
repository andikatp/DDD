// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationState {
  LocationReq get provinceData => throw _privateConstructorUsedError;
  CityReq get cityData => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call({LocationReq provinceData, CityReq cityData, int price});

  $LocationReqCopyWith<$Res> get provinceData;
  $CityReqCopyWith<$Res> get cityData;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceData = null,
    Object? cityData = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      provinceData: null == provinceData
          ? _value.provinceData
          : provinceData // ignore: cast_nullable_to_non_nullable
              as LocationReq,
      cityData: null == cityData
          ? _value.cityData
          : cityData // ignore: cast_nullable_to_non_nullable
              as CityReq,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationReqCopyWith<$Res> get provinceData {
    return $LocationReqCopyWith<$Res>(_value.provinceData, (value) {
      return _then(_value.copyWith(provinceData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityReqCopyWith<$Res> get cityData {
    return $CityReqCopyWith<$Res>(_value.cityData, (value) {
      return _then(_value.copyWith(cityData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationStateImplCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$LocationStateImplCopyWith(
          _$LocationStateImpl value, $Res Function(_$LocationStateImpl) then) =
      __$$LocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationReq provinceData, CityReq cityData, int price});

  @override
  $LocationReqCopyWith<$Res> get provinceData;
  @override
  $CityReqCopyWith<$Res> get cityData;
}

/// @nodoc
class __$$LocationStateImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateImpl>
    implements _$$LocationStateImplCopyWith<$Res> {
  __$$LocationStateImplCopyWithImpl(
      _$LocationStateImpl _value, $Res Function(_$LocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceData = null,
    Object? cityData = null,
    Object? price = null,
  }) {
    return _then(_$LocationStateImpl(
      provinceData: null == provinceData
          ? _value.provinceData
          : provinceData // ignore: cast_nullable_to_non_nullable
              as LocationReq,
      cityData: null == cityData
          ? _value.cityData
          : cityData // ignore: cast_nullable_to_non_nullable
              as CityReq,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LocationStateImpl implements _LocationState {
  const _$LocationStateImpl(
      {required this.provinceData,
      required this.cityData,
      required this.price});

  @override
  final LocationReq provinceData;
  @override
  final CityReq cityData;
  @override
  final int price;

  @override
  String toString() {
    return 'LocationState(provinceData: $provinceData, cityData: $cityData, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateImpl &&
            (identical(other.provinceData, provinceData) ||
                other.provinceData == provinceData) &&
            (identical(other.cityData, cityData) ||
                other.cityData == cityData) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provinceData, cityData, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      __$$LocationStateImplCopyWithImpl<_$LocationStateImpl>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {required final LocationReq provinceData,
      required final CityReq cityData,
      required final int price}) = _$LocationStateImpl;

  @override
  LocationReq get provinceData;
  @override
  CityReq get cityData;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
