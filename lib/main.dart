import 'package:flutter/material.dart';
import 'package:rhymer2/router/router.dart';

void main() => runApp(const RhymerApp());

class RhymerApp extends StatefulWidget {
  const RhymerApp({super.key});

  @override
  State<RhymerApp> createState() => _RhymerAppState();
}

class _RhymerAppState extends State<RhymerApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFF82B10);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Rhymer",
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        scaffoldBackgroundColor: const Color(0xFFEFF1F3),
        useMaterial3: true,
      ),
      routerConfig: _router.config(),
    );
  }
}
