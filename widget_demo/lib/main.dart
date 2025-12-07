import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:widget_demo/l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      home: HomeScreen(),
      // localizationsDelegates: [
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [Locale('ja', 'JP')],
    );
  }
}

class AnimalView extends StatelessWidget {
  const AnimalView({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 100,
      height: 100,
      child: Center(child: Text(text)),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _count++;
        });
      },
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        child: Center(child: Text('$_count')),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = Localizations.localeOf(context).toString();
    final l10n = L10n.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(),
            Text(DateFormat.yMEd().format(DateTime.now())),
            Text(l10n.helloWorld),
            Image.asset("assets/circle.png"),
          ],
        ),
      ),
    );
  }
}
