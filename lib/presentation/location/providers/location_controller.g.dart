// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$allLocationsHash() => r'bb66458c07f147990d5bafea314995283ad6c1b4';

/// See also [allLocations].
@ProviderFor(allLocations)
final allLocationsProvider = AutoDisposeFutureProvider<LocationReq>.internal(
  allLocations,
  name: r'allLocationsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allLocationsHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef AllLocationsRef = AutoDisposeFutureProviderRef<LocationReq>;
String _$allCityFromProvinceHash() =>
    r'12e286f9d1f738c904752b1469546355e1312cf3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [allCityFromProvince].
@ProviderFor(allCityFromProvince)
const allCityFromProvinceProvider = AllCityFromProvinceFamily();

/// See also [allCityFromProvince].
class AllCityFromProvinceFamily extends Family<AsyncValue<CityReq>> {
  /// See also [allCityFromProvince].
  const AllCityFromProvinceFamily();

  /// See also [allCityFromProvince].
  AllCityFromProvinceProvider call(
    String id,
  ) {
    return AllCityFromProvinceProvider(
      id,
    );
  }

  @override
  AllCityFromProvinceProvider getProviderOverride(
    covariant AllCityFromProvinceProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies =
      const <ProviderOrFamily>[];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      const <ProviderOrFamily>{};

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'allCityFromProvinceProvider';
}

/// See also [allCityFromProvince].
class AllCityFromProvinceProvider extends AutoDisposeFutureProvider<CityReq> {
  /// See also [allCityFromProvince].
  AllCityFromProvinceProvider(
    String id,
  ) : this._internal(
          (ref) => allCityFromProvince(
            ref as AllCityFromProvinceRef,
            id,
          ),
          from: allCityFromProvinceProvider,
          name: r'allCityFromProvinceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$allCityFromProvinceHash,
          dependencies: AllCityFromProvinceFamily._dependencies,
          allTransitiveDependencies:
              AllCityFromProvinceFamily._allTransitiveDependencies,
          id: id,
        );

  AllCityFromProvinceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<CityReq> Function(AllCityFromProvinceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AllCityFromProvinceProvider._internal(
        (ref) => create(ref as AllCityFromProvinceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CityReq> createElement() {
    return _AllCityFromProvinceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AllCityFromProvinceProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AllCityFromProvinceRef on AutoDisposeFutureProviderRef<CityReq> {
  /// The parameter `id` of this provider.
  String get id;
}

class _AllCityFromProvinceProviderElement
    extends AutoDisposeFutureProviderElement<CityReq>
    with AllCityFromProvinceRef {
  _AllCityFromProvinceProviderElement(super.provider);

  @override
  String get id => (origin as AllCityFromProvinceProvider).id;
}

String _$cityControllerHash() => r'cbd92e9b70aed51131ec19e2bb4fdde7e1ad4792';

abstract class _$CityController
    extends BuildlessAutoDisposeAsyncNotifier<CityReq> {
  late final String id;

  FutureOr<CityReq> build(
    String id,
  );
}

/// See also [CityController].
@ProviderFor(CityController)
const cityControllerProvider = CityControllerFamily();

/// See also [CityController].
class CityControllerFamily extends Family<AsyncValue<CityReq>> {
  /// See also [CityController].
  const CityControllerFamily();

  /// See also [CityController].
  CityControllerProvider call(
    String id,
  ) {
    return CityControllerProvider(
      id,
    );
  }

  @override
  CityControllerProvider getProviderOverride(
    covariant CityControllerProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies =
      const <ProviderOrFamily>[];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      const <ProviderOrFamily>{};

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'cityControllerProvider';
}

/// See also [CityController].
class CityControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CityController, CityReq> {
  /// See also [CityController].
  CityControllerProvider(
    String id,
  ) : this._internal(
          () => CityController()..id = id,
          from: cityControllerProvider,
          name: r'cityControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cityControllerHash,
          dependencies: CityControllerFamily._dependencies,
          allTransitiveDependencies:
              CityControllerFamily._allTransitiveDependencies,
          id: id,
        );

  CityControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<CityReq> runNotifierBuild(
    covariant CityController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(CityController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CityControllerProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CityController, CityReq>
      createElement() {
    return _CityControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CityControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CityControllerRef on AutoDisposeAsyncNotifierProviderRef<CityReq> {
  /// The parameter `id` of this provider.
  String get id;
}

class _CityControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CityController, CityReq>
    with CityControllerRef {
  _CityControllerProviderElement(super.provider);

  @override
  String get id => (origin as CityControllerProvider).id;
}

String _$priceControllerHash() => r'165b1ce3d8d0be8a5f752531d51e37e79d28f57d';

/// See also [PriceController].
@ProviderFor(PriceController)
final priceControllerProvider =
    AutoDisposeNotifierProvider<PriceController, PriceReq>.internal(
  PriceController.new,
  name: r'priceControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$priceControllerHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef _$PriceController = AutoDisposeNotifier<PriceReq>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
