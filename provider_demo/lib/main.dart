import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(title: "Counter"),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greet = ref.watch(asyncGreetProvider);
    final counter = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            greet.when(
              data: (value) => Text(
                value,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text("Error: $error"),
            ),
            counter.when(
              data: (value) => Text(
                "$value",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text("Error: $error"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
        },
        tooltip: "Increment",
        child: const Icon(Icons.add),
      ),
    );
  }
}

@riverpod
String greet(Ref ref) {
  return 'Hello World';
}

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  Future<int> build() async {
    await Future.delayed(const Duration(seconds: 1));
    return 0;
  }

  void increment() async {
    final currentValue = state.value;
    if (currentValue == null) {
      return;
    }

    state = AsyncLoading();
    await Future.delayed(const Duration(seconds: 1));
    state = AsyncData(currentValue + 1);
  }
}

@riverpod
Future<String> asyncGreet(Ref ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Hello World';
}

@riverpod
Raw<Future<int>> fakeFirstApi(Ref ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 1;
}

@riverpod
Raw<Future<int>> fakeSecondApi(Ref ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 2;
}

@riverpod
Future<int> fakeSumApi(Ref ref) async {
  final firstApiResult = await ref.watch(fakeFirstApiProvider);
  final secondApiResult = await ref.watch(fakeSecondApiProvider);
  return firstApiResult + secondApiResult;
}
