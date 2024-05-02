import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer2/ui/ui.dart';

@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          pinned: true,
          floating: true,
          snap: true,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          title: Text("History"),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
              childAspectRatio: 1.6,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const RhymeHistoryCard(rhymes: [
                  "Rhyme1",
                  "Rhyme2",
                  "Rhyme3",
                  "Rhyme4",
                ]);
              },
              childCount: 20,
            ),
          ),
        ),
      ],
    );
  }
}
