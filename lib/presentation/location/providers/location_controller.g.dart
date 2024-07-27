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

String _$priceFromTwoCitiesHash() =>
    r'a975fd9a6ac5dcb406b91e66105803c1973d7af1';

/// See also [PriceFromTwoCities].
@ProviderFor(PriceFromTwoCities)
final priceFromTwoCitiesProvider =
    AutoDisposeNotifierProvider<PriceFromTwoCities, PriceReq>.internal(
  PriceFromTwoCities.new,
  name: r'priceFromTwoCitiesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$priceFromTwoCitiesHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef _$PriceFromTwoCities = AutoDisposeNotifier<PriceReq>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
