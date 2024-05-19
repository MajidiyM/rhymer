import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer2/features/search/widgets/search_rhymes_bottom_sheet.dart';
import 'package:rhymer2/features/search/widgets/widgets.dart';
import 'package:rhymer2/ui/ui.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          snap: true,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          title: const Text("Rhymer"),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: SearchButton(
              onTap: () {
                _showSearchBottomSheet(context, theme);
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
            child: ListView.separated(
              itemCount: 10,
              padding: const EdgeInsets.only(left: 16),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
              itemBuilder: (context, index) {
                final rhymes = List.generate(4, (index) => "Rhymes $index");
                return RhymeHistoryCard(rhymes: rhymes);
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverList.builder(
          itemBuilder: (context, index) => const RhymeListCard(
            rhyme: 'Rhyme',
          ),
        ),
      ],
    );
  }

  void _showSearchBottomSheet(BuildContext context, ThemeData theme) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => const Padding(
        padding: EdgeInsets.only(top: 120),
        child: SearchRhymesBootomSheet(),
      ),
    );
  }
}
