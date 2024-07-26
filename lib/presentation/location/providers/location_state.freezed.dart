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
  LocationReq? get locationReq => throw _privateConstructorUsedError;
  CityReq? get cityReq => throw _privateConstructorUsedError;
  PriceReq? get priceReq => throw _privateConstructorUsedError;

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
  $Res call({LocationReq? locationReq, CityReq? cityReq, PriceReq? priceReq});

  $LocationReqCopyWith<$Res>? get locationReq;
  $CityReqCopyWith<$Res>? get cityReq;
  $PriceReqCopyWith<$Res>? get priceReq;
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
    Object? locationReq = freezed,
    Object? cityReq = freezed,
    Object? priceReq = freezed,
  }) {
    return _then(_value.copyWith(
      locationReq: freezed == locationReq
          ? _value.locationReq
          : locationReq // ignore: cast_nullable_to_non_nullable
              as LocationReq?,
      cityReq: freezed == cityReq
          ? _value.cityReq
          : cityReq // ignore: cast_nullable_to_non_nullable
              as CityReq?,
      priceReq: freezed == priceReq
          ? _value.priceReq
          : priceReq // ignore: cast_nullable_to_non_nullable
              as PriceReq?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationReqCopyWith<$Res>? get locationReq {
    if (_value.locationReq == null) {
      return null;
    }

    return $LocationReqCopyWith<$Res>(_value.locationReq!, (value) {
      return _then(_value.copyWith(locationReq: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityReqCopyWith<$Res>? get cityReq {
    if (_value.cityReq == null) {
      return null;
    }

    return $CityReqCopyWith<$Res>(_value.cityReq!, (value) {
      return _then(_value.copyWith(cityReq: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceReqCopyWith<$Res>? get priceReq {
    if (_value.priceReq == null) {
      return null;
    }

    return $PriceReqCopyWith<$Res>(_value.priceReq!, (value) {
      return _then(_value.copyWith(priceReq: value) as $Val);
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
  $Res call({LocationReq? locationReq, CityReq? cityReq, PriceReq? priceReq});

  @override
  $LocationReqCopyWith<$Res>? get locationReq;
  @override
  $CityReqCopyWith<$Res>? get cityReq;
  @override
  $PriceReqCopyWith<$Res>? get priceReq;
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
    Object? locationReq = freezed,
    Object? cityReq = freezed,
    Object? priceReq = freezed,
  }) {
    return _then(_$LocationStateImpl(
      locationReq: freezed == locationReq
          ? _value.locationReq
          : locationReq // ignore: cast_nullable_to_non_nullable
              as LocationReq?,
      cityReq: freezed == cityReq
          ? _value.cityReq
          : cityReq // ignore: cast_nullable_to_non_nullable
              as CityReq?,
      priceReq: freezed == priceReq
          ? _value.priceReq
          : priceReq // ignore: cast_nullable_to_non_nullable
              as PriceReq?,
    ));
  }
}

/// @nodoc

class _$LocationStateImpl implements _LocationState {
  const _$LocationStateImpl({this.locationReq, this.cityReq, this.priceReq});

  @override
  final LocationReq? locationReq;
  @override
  final CityReq? cityReq;
  @override
  final PriceReq? priceReq;

  @override
  String toString() {
    return 'LocationState(locationReq: $locationReq, cityReq: $cityReq, priceReq: $priceReq)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateImpl &&
            (identical(other.locationReq, locationReq) ||
                other.locationReq == locationReq) &&
            (identical(other.cityReq, cityReq) || other.cityReq == cityReq) &&
            (identical(other.priceReq, priceReq) ||
                other.priceReq == priceReq));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationReq, cityReq, priceReq);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      __$$LocationStateImplCopyWithImpl<_$LocationStateImpl>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {final LocationReq? locationReq,
      final CityReq? cityReq,
      final PriceReq? priceReq}) = _$LocationStateImpl;

  @override
  LocationReq? get locationReq;
  @override
  CityReq? get cityReq;
  @override
  PriceReq? get priceReq;
  @override
  @JsonKey(ignore: true)
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
