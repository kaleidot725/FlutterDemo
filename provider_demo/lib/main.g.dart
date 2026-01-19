// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(greet)
final greetProvider = GreetProvider._();

final class GreetProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  GreetProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'greetProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$greetHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return greet(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$greetHash() => r'b8bc266558d5fb66d105785627ea878392140065';

@ProviderFor(CounterNotifier)
final counterProvider = CounterNotifierProvider._();

final class CounterNotifierProvider
    extends $AsyncNotifierProvider<CounterNotifier, int> {
  CounterNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'counterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$counterNotifierHash();

  @$internal
  @override
  CounterNotifier create() => CounterNotifier();
}

String _$counterNotifierHash() => r'7e6b7f2dd9de89531220937d47f99895c2a7cc78';

abstract class _$CounterNotifier extends $AsyncNotifier<int> {
  FutureOr<int> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<int>, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<int>, int>,
              AsyncValue<int>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(asyncGreet)
final asyncGreetProvider = AsyncGreetProvider._();

final class AsyncGreetProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  AsyncGreetProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'asyncGreetProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$asyncGreetHash();

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    return asyncGreet(ref);
  }
}

String _$asyncGreetHash() => r'36cffe51e5ef5b79be11fc6e2099fd3a7b2ef085';

@ProviderFor(fakeFirstApi)
final fakeFirstApiProvider = FakeFirstApiProvider._();

final class FakeFirstApiProvider
    extends
        $FunctionalProvider<
          Raw<Future<int>>,
          Raw<Future<int>>,
          Raw<Future<int>>
        >
    with $Provider<Raw<Future<int>>> {
  FakeFirstApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fakeFirstApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fakeFirstApiHash();

  @$internal
  @override
  $ProviderElement<Raw<Future<int>>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Raw<Future<int>> create(Ref ref) {
    return fakeFirstApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Raw<Future<int>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Raw<Future<int>>>(value),
    );
  }
}

String _$fakeFirstApiHash() => r'b0813a5a64f92f017148123c4a3c2668a15e7dd8';

@ProviderFor(fakeSecondApi)
final fakeSecondApiProvider = FakeSecondApiProvider._();

final class FakeSecondApiProvider
    extends
        $FunctionalProvider<
          Raw<Future<int>>,
          Raw<Future<int>>,
          Raw<Future<int>>
        >
    with $Provider<Raw<Future<int>>> {
  FakeSecondApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fakeSecondApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fakeSecondApiHash();

  @$internal
  @override
  $ProviderElement<Raw<Future<int>>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Raw<Future<int>> create(Ref ref) {
    return fakeSecondApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Raw<Future<int>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Raw<Future<int>>>(value),
    );
  }
}

String _$fakeSecondApiHash() => r'3ed7f37a2e02a5b0397968968a9d9d5e4e17bfce';

@ProviderFor(fakeSumApi)
final fakeSumApiProvider = FakeSumApiProvider._();

final class FakeSumApiProvider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  FakeSumApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fakeSumApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fakeSumApiHash();

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    return fakeSumApi(ref);
  }
}

String _$fakeSumApiHash() => r'd28068318cbfa4f5ffefd200fbbdfda8d4d76187';
