// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:boo_book/models/index.dart' as _i16;
import 'package:boo_book/screens/auth_screen.dart' as _i1;
import 'package:boo_book/screens/login/login_screen.dart' as _i6;
import 'package:boo_book/screens/main/main_screen.dart' as _i7;
import 'package:boo_book/screens/main/main_wrapper.dart' as _i8;
import 'package:boo_book/screens/main/pages/community/community_screen.dart'
    as _i2;
import 'package:boo_book/screens/main/pages/home/home_screen.dart' as _i4;
import 'package:boo_book/screens/main/pages/library/library_screen.dart' as _i5;
import 'package:boo_book/screens/main/pages/profile/profile_screen.dart' as _i9;
import 'package:boo_book/screens/search/modals/search_book_details_modal/search_book_details_modal_screen.dart'
    as _i11;
import 'package:boo_book/screens/search/modals/view_all_reviews_modal/view_all_reviews_modal_screen.dart'
    as _i13;
import 'package:boo_book/screens/search/search_screen.dart' as _i12;
import 'package:boo_book/screens/user_book_details/pages/completed_book_screen/completed_book_modal_screen.dart'
    as _i3;
import 'package:boo_book/screens/user_book_details/pages/reading_book_screen/reading_book_modal_screen.dart'
    as _i10;
import 'package:flutter/material.dart' as _i15;
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart' as _i17;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    CommunityRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CommunityScreen(),
      );
    },
    CompletedBookModalRoute.name: (routeData) {
      final args = routeData.argsAs<CompletedBookModalRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(
            child: _i3.CompletedBookModalScreen(
          key: args.key,
          book: args.book,
        )),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(child: const _i4.HomeScreen()),
      );
    },
    LibraryRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(child: const _i5.LibraryScreen()),
      );
    },
    LoginRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MainScreen(),
      );
    },
    MainRouter.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MainWrapperScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(child: const _i9.ProfileScreen()),
      );
    },
    ReadingBookModalRoute.name: (routeData) {
      final args = routeData.argsAs<ReadingBookModalRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(
            child: _i10.ReadingBookModalScreen(
          key: args.key,
          book: args.book,
        )),
      );
    },
    SearchBookDetailsModalRoute.name: (routeData) {
      final args = routeData.argsAs<SearchBookDetailsModalRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(
            child: _i11.SearchBookDetailsModalScreen(
          key: args.key,
          initial: args.initial,
        )),
      );
    },
    SearchRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(child: const _i12.SearchScreen()),
      );
    },
    ViewAllReviewsModalRoute.name: (routeData) {
      final args = routeData.argsAs<ViewAllReviewsModalRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.ViewAllReviewsModalScreen(
          key: args.key,
          reviews: args.reviews,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i14.PageRouteInfo<void> {
  const AuthRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CommunityScreen]
class CommunityRoute extends _i14.PageRouteInfo<void> {
  const CommunityRoute({List<_i14.PageRouteInfo>? children})
      : super(
          CommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CompletedBookModalScreen]
class CompletedBookModalRoute
    extends _i14.PageRouteInfo<CompletedBookModalRouteArgs> {
  CompletedBookModalRoute({
    _i15.Key? key,
    required _i16.UserBookModel book,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          CompletedBookModalRoute.name,
          args: CompletedBookModalRouteArgs(
            key: key,
            book: book,
          ),
          initialChildren: children,
        );

  static const String name = 'CompletedBookModalRoute';

  static const _i14.PageInfo<CompletedBookModalRouteArgs> page =
      _i14.PageInfo<CompletedBookModalRouteArgs>(name);
}

class CompletedBookModalRouteArgs {
  const CompletedBookModalRouteArgs({
    this.key,
    required this.book,
  });

  final _i15.Key? key;

  final _i16.UserBookModel book;

  @override
  String toString() {
    return 'CompletedBookModalRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LibraryScreen]
class LibraryRoute extends _i14.PageRouteInfo<void> {
  const LibraryRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LibraryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LibraryRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MainScreen]
class MainRoute extends _i14.PageRouteInfo<void> {
  const MainRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MainWrapperScreen]
class MainRouter extends _i14.PageRouteInfo<void> {
  const MainRouter({List<_i14.PageRouteInfo>? children})
      : super(
          MainRouter.name,
          initialChildren: children,
        );

  static const String name = 'MainRouter';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ReadingBookModalScreen]
class ReadingBookModalRoute
    extends _i14.PageRouteInfo<ReadingBookModalRouteArgs> {
  ReadingBookModalRoute({
    _i15.Key? key,
    required _i16.UserBookModel book,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ReadingBookModalRoute.name,
          args: ReadingBookModalRouteArgs(
            key: key,
            book: book,
          ),
          initialChildren: children,
        );

  static const String name = 'ReadingBookModalRoute';

  static const _i14.PageInfo<ReadingBookModalRouteArgs> page =
      _i14.PageInfo<ReadingBookModalRouteArgs>(name);
}

class ReadingBookModalRouteArgs {
  const ReadingBookModalRouteArgs({
    this.key,
    required this.book,
  });

  final _i15.Key? key;

  final _i16.UserBookModel book;

  @override
  String toString() {
    return 'ReadingBookModalRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [_i11.SearchBookDetailsModalScreen]
class SearchBookDetailsModalRoute
    extends _i14.PageRouteInfo<SearchBookDetailsModalRouteArgs> {
  SearchBookDetailsModalRoute({
    _i15.Key? key,
    required _i16.BookSearchModel initial,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SearchBookDetailsModalRoute.name,
          args: SearchBookDetailsModalRouteArgs(
            key: key,
            initial: initial,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchBookDetailsModalRoute';

  static const _i14.PageInfo<SearchBookDetailsModalRouteArgs> page =
      _i14.PageInfo<SearchBookDetailsModalRouteArgs>(name);
}

class SearchBookDetailsModalRouteArgs {
  const SearchBookDetailsModalRouteArgs({
    this.key,
    required this.initial,
  });

  final _i15.Key? key;

  final _i16.BookSearchModel initial;

  @override
  String toString() {
    return 'SearchBookDetailsModalRouteArgs{key: $key, initial: $initial}';
  }
}

/// generated route for
/// [_i12.SearchScreen]
class SearchRoute extends _i14.PageRouteInfo<void> {
  const SearchRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ViewAllReviewsModalScreen]
class ViewAllReviewsModalRoute
    extends _i14.PageRouteInfo<ViewAllReviewsModalRouteArgs> {
  ViewAllReviewsModalRoute({
    _i15.Key? key,
    required _i17.ListFieldBloc<_i16.BookReviewModel> reviews,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ViewAllReviewsModalRoute.name,
          args: ViewAllReviewsModalRouteArgs(
            key: key,
            reviews: reviews,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewAllReviewsModalRoute';

  static const _i14.PageInfo<ViewAllReviewsModalRouteArgs> page =
      _i14.PageInfo<ViewAllReviewsModalRouteArgs>(name);
}

class ViewAllReviewsModalRouteArgs {
  const ViewAllReviewsModalRouteArgs({
    this.key,
    required this.reviews,
  });

  final _i15.Key? key;

  final _i17.ListFieldBloc<_i16.BookReviewModel> reviews;

  @override
  String toString() {
    return 'ViewAllReviewsModalRouteArgs{key: $key, reviews: $reviews}';
  }
}
