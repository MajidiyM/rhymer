import 'package:auto_route/auto_route.dart';

import '../features/favorite/favorite.dart';
import '../features/home/home.dart';
import '../features/poems/poems.dart';
import '../features/search/search.dart';
import '../features/settings/settings.dart';
part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: "/",
          children: [
            AutoRoute(
              page: SearchRoute.page,
              path: "search",
            ),
            AutoRoute(
              page: FavoriteRoute.page,
              path: "favotites",
            ),
            AutoRoute(
              page: PoemsRoute.page,
              path: "poems",
            ),
            AutoRoute(
              page: SettingsRoute.page,
              path: "settings",
            ),
          ],
        ),
      ];
}
