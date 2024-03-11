import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: AuthRoute.page,
      children: [
        AutoRoute(page: LoginRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(
              path: '',
              page: HomeRoute.page,
              children: const [
                //
              ],
            ),
            //
          ],
        ),
      ],
    ),
  ];
}
