import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer2/features/settings/widgets/widgets.dart';
import 'package:rhymer2/ui/ui.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            elevation: 0,
            surfaceTintColor: Colors.transparent,
            title: Text("Settings"),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverToBoxAdapter(
            child: SettingsToggleCard(
              title: "Dark Theme",
              value: true,
            ),
          ),
          const SliverToBoxAdapter(
            child: SettingsToggleCard(
              title: "Notifications",
              value: true,
            ),
          ),
          const SliverToBoxAdapter(
            child: SettingsToggleCard(
              title: "Allow Data Analytics",
              value: false,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: SettingsActionCard(
              title: "Clear Cache",
              iconData: Icons.delete_outline_sharp,
              iconColor: theme.primaryColor,
              onTap: () {},
            ),
          ),
          SliverToBoxAdapter(
            child: SettingsActionCard(
              title: "Technical Support",
              iconData: Icons.message_outlined,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsActionCard extends StatelessWidget {
  const SettingsActionCard(
      {super.key,
      required this.title,
      this.onTap,
      required this.iconData,
      this.iconColor});

  final String title;
  final VoidCallback? onTap;
  final IconData iconData;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
        child: BaseContainer(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  iconData,
                  size: 32,
                  color: iconColor ?? theme.hintColor.withOpacity(0.3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
