// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProvinceData _$ProvinceDataFromJson(Map<String, dynamic> json) {
  return _ProvinceData.fromJson(json);
}

/// @nodoc
mixin _$ProvinceData {
  String get provinceId => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceDataCopyWith<ProvinceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceDataCopyWith<$Res> {
  factory $ProvinceDataCopyWith(
          ProvinceData value, $Res Function(ProvinceData) then) =
      _$ProvinceDataCopyWithImpl<$Res, ProvinceData>;
  @useResult
  $Res call({String provinceId, String province});
}

/// @nodoc
class _$ProvinceDataCopyWithImpl<$Res, $Val extends ProvinceData>
    implements $ProvinceDataCopyWith<$Res> {
  _$ProvinceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceId = null,
    Object? province = null,
  }) {
    return _then(_value.copyWith(
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProvinceDataImplCopyWith<$Res>
    implements $ProvinceDataCopyWith<$Res> {
  factory _$$ProvinceDataImplCopyWith(
          _$ProvinceDataImpl value, $Res Function(_$ProvinceDataImpl) then) =
      __$$ProvinceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String provinceId, String province});
}

/// @nodoc
class __$$ProvinceDataImplCopyWithImpl<$Res>
    extends _$ProvinceDataCopyWithImpl<$Res, _$ProvinceDataImpl>
    implements _$$ProvinceDataImplCopyWith<$Res> {
  __$$ProvinceDataImplCopyWithImpl(
      _$ProvinceDataImpl _value, $Res Function(_$ProvinceDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceId = null,
    Object? province = null,
  }) {
    return _then(_$ProvinceDataImpl(
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ProvinceDataImpl with DiagnosticableTreeMixin implements _ProvinceData {
  const _$ProvinceDataImpl({required this.provinceId, required this.province});

  factory _$ProvinceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvinceDataImplFromJson(json);

  @override
  final String provinceId;
  @override
  final String province;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProvinceData(provinceId: $provinceId, province: $province)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProvinceData'))
      ..add(DiagnosticsProperty('provinceId', provinceId))
      ..add(DiagnosticsProperty('province', province));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceDataImpl &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.province, province) ||
                other.province == province));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, provinceId, province);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinceDataImplCopyWith<_$ProvinceDataImpl> get copyWith =>
      __$$ProvinceDataImplCopyWithImpl<_$ProvinceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvinceDataImplToJson(
      this,
    );
  }
}

abstract class _ProvinceData implements ProvinceData {
  const factory _ProvinceData(
      {required final String provinceId,
      required final String province}) = _$ProvinceDataImpl;

  factory _ProvinceData.fromJson(Map<String, dynamic> json) =
      _$ProvinceDataImpl.fromJson;

  @override
  String get provinceId;
  @override
  String get province;
  @override
  @JsonKey(ignore: true)
  _$$ProvinceDataImplCopyWith<_$ProvinceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
