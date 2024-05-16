import 'package:flutter/material.dart';
import 'package:rhymer2/ui/ui.dart';

class RhymeListCard extends StatelessWidget {
  const RhymeListCard({
    super.key,
    this.isfavorite = false,
    required this.rhyme,
    this.sourceWord,
  });

  final bool isfavorite;
  final String rhyme;
  final String? sourceWord;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  if (sourceWord != null) ...[
                    Text(
                      sourceWord!,
                      style: theme.textTheme.bodyLarge,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: theme.hintColor.withOpacity(0.4),
                      ),
                    ),
                  ],
                ],
              ),
              Text(
                rhyme,
                style: theme.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: isfavorite
                  ? theme.primaryColor
                  : theme.hintColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
