// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_injectable_module.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'a0be06ac888d174b1fe2cef27cb587779a95ff32';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$dioLoggerHash() => r'32fc93ab966ba0e759f3602ea8c88d7f25f71f96';

/// See also [dioLogger].
@ProviderFor(dioLogger)
final dioLoggerProvider = AutoDisposeProvider<DioLogger>.internal(
  dioLogger,
  name: r'dioLoggerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioLoggerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioLoggerRef = AutoDisposeProviderRef<DioLogger>;
String _$delayedRequestHash() => r'4232ab7efaf1d050d99aa0dc511c54a21c678f18';

/// See also [delayedRequest].
@ProviderFor(delayedRequest)
final delayedRequestProvider = AutoDisposeProvider<DelayedRequest>.internal(
  delayedRequest,
  name: r'delayedRequestProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$delayedRequestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DelayedRequestRef = AutoDisposeProviderRef<DelayedRequest>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
