import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Color(0xFFF82B10);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            backgroundColor: theme.cardColor,
            elevation: 0,
            surfaceTintColor: Colors.transparent,
            title: Text("Rhymer"),
            bottom: PreferredSize(
              child: TextFormField(),
              preferredSize: Size.fromHeight(70),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: theme.primaryColor,
      ),
    );
  }
}
