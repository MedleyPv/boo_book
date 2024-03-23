// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:boo_book/models/index.dart' as _i14;
import 'package:boo_book/screens/auth_screen.dart' as _i1;
import 'package:boo_book/screens/login/login_screen.dart' as _i5;
import 'package:boo_book/screens/main/main_screen.dart' as _i6;
import 'package:boo_book/screens/main/main_wrapper.dart' as _i7;
import 'package:boo_book/screens/main/pages/community/community_screen.dart'
    as _i2;
import 'package:boo_book/screens/main/pages/home/home_screen.dart' as _i3;
import 'package:boo_book/screens/main/pages/library/library_screen.dart' as _i4;
import 'package:boo_book/screens/main/pages/profile/profile_screen.dart' as _i8;
import 'package:boo_book/screens/search/modals/search_book_details_modal/search_book_details_modal_screen.dart'
    as _i9;
import 'package:boo_book/screens/search/modals/view_all_reviews_modal/view_all_reviews_modal.dart'
    as _i11;
import 'package:boo_book/screens/search/search_screen.dart' as _i10;
import 'package:flutter/material.dart' as _i13;
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart' as _i15;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    CommunityRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CommunityScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(child: const _i3.HomeScreen()),
      );
    },
    LibraryRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(child: const _i4.LibraryScreen()),
      );
    },
    LoginRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MainScreen(),
      );
    },
    MainRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MainWrapperScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(child: const _i8.ProfileScreen()),
      );
    },
    SearchBookDetailsModalRoute.name: (routeData) {
      final args = routeData.argsAs<SearchBookDetailsModalRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(
            child: _i9.SearchBookDetailsModalScreen(
          key: args.key,
          initial: args.initial,
        )),
      );
    },
    SearchRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(child: const _i10.SearchScreen()),
      );
    },
    ViewAllReviewsModal.name: (routeData) {
      final args = routeData.argsAs<ViewAllReviewsModalArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.ViewAllReviewsModal(
          key: args.key,
          reviews: args.reviews,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i12.PageRouteInfo<void> {
  const AuthRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CommunityScreen]
class CommunityRoute extends _i12.PageRouteInfo<void> {
  const CommunityRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LibraryScreen]
class LibraryRoute extends _i12.PageRouteInfo<void> {
  const LibraryRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LibraryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LibraryRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MainScreen]
class MainRoute extends _i12.PageRouteInfo<void> {
  const MainRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MainWrapperScreen]
class MainRouter extends _i12.PageRouteInfo<void> {
  const MainRouter({List<_i12.PageRouteInfo>? children})
      : super(
          MainRouter.name,
          initialChildren: children,
        );

  static const String name = 'MainRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SearchBookDetailsModalScreen]
class SearchBookDetailsModalRoute
    extends _i12.PageRouteInfo<SearchBookDetailsModalRouteArgs> {
  SearchBookDetailsModalRoute({
    _i13.Key? key,
    required _i14.BookSearchModel initial,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SearchBookDetailsModalRoute.name,
          args: SearchBookDetailsModalRouteArgs(
            key: key,
            initial: initial,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchBookDetailsModalRoute';

  static const _i12.PageInfo<SearchBookDetailsModalRouteArgs> page =
      _i12.PageInfo<SearchBookDetailsModalRouteArgs>(name);
}

class SearchBookDetailsModalRouteArgs {
  const SearchBookDetailsModalRouteArgs({
    this.key,
    required this.initial,
  });

  final _i13.Key? key;

  final _i14.BookSearchModel initial;

  @override
  String toString() {
    return 'SearchBookDetailsModalRouteArgs{key: $key, initial: $initial}';
  }
}

/// generated route for
/// [_i10.SearchScreen]
class SearchRoute extends _i12.PageRouteInfo<void> {
  const SearchRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ViewAllReviewsModal]
class ViewAllReviewsModal extends _i12.PageRouteInfo<ViewAllReviewsModalArgs> {
  ViewAllReviewsModal({
    _i13.Key? key,
    required _i15.ListFieldBloc<_i14.BookReviewModel> reviews,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          ViewAllReviewsModal.name,
          args: ViewAllReviewsModalArgs(
            key: key,
            reviews: reviews,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewAllReviewsModal';

  static const _i12.PageInfo<ViewAllReviewsModalArgs> page =
      _i12.PageInfo<ViewAllReviewsModalArgs>(name);
}

class ViewAllReviewsModalArgs {
  const ViewAllReviewsModalArgs({
    this.key,
    required this.reviews,
  });

  final _i13.Key? key;

  final _i15.ListFieldBloc<_i14.BookReviewModel> reviews;

  @override
  String toString() {
    return 'ViewAllReviewsModalArgs{key: $key, reviews: $reviews}';
  }
}
