import 'package:flutter/material.dart';
import 'package:rhymer2/router/router.dart';

import 'ui/ui.dart';

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
    
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Rhymer",
      theme: themeData,
      routerConfig: _router.config(),
    );
  }
}
