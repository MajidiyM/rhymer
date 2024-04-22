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
        scaffoldBackgroundColor: Color(0xFFEFF1F3),
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
            elevation: 0,
            surfaceTintColor: Colors.transparent,
            title: Text("Rhymer"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: SearchButton(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => RhymeListCard(),
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

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.hintColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(Icons.search_rounded),
          SizedBox(
            width: 12,
          ),
          Text(
            "Поиск...",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: theme.hintColor.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}

class RhymeListCard extends StatelessWidget {
  const RhymeListCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 10),
      padding: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Rhyme",
            style: theme.textTheme.bodyLarge,
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: theme.hintColor.withOpacity(0.2),),),
        ],
      ),
    );
  }
}

