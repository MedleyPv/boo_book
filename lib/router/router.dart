import 'package:boo_book/router/index.dart';

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
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: MainRouter.page,
          children: [
            AutoRoute(
              path: '',
              page: MainRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: HomeRoute.page,
                ),
                AutoRoute(
                  page: LibraryRoute.page,
                ),
                AutoRoute(
                  page: CommunityRoute.page,
                ),
                AutoRoute(
                  page: ProfileRoute.page,
                ),
              ],
            ),
            CustomRoute(
              page: SearchRoute.page,
              transitionsBuilder: TransitionsBuilders.slideBottom,
            ),
            AutoRoute(
              page: SearchBookDetailsModalRoute.page,
            ),
            AutoRoute(
              page: ViewAllReviewsModalRoute.page,
            ),
            AutoRoute(
              page: ReadingBookModalRoute.page,
            ),
          ],
        ),
      ],
    ),
  ];
}
