import 'package:flutter/material.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/router/index.dart';

extension ContextTheme on BuildContext {
  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }

  Size get sizeOf {
    return MediaQuery.sizeOf(this);
  }

  double get screenHeight {
    final viewInsets = MediaQuery.viewPaddingOf(this);
    final appBarHeight =
        Theme.of(this).appBarTheme.toolbarHeight ?? kToolbarHeight;

    final occupiedSpace = viewInsets.top + viewInsets.bottom + appBarHeight;

    return sizeOf.height - occupiedSpace;
  }
}

extension RouteExt on BuildContext {
  Future<T?> navigateToBookDetails<T>(UserBookModel book) {
    final PageRouteInfo route;

    if (book.completed) {
      route = CompletedBookModalRoute(book: book);
    } else {
      route = ReadingBookModalRoute(book: book);
    }

    return pushRoute<T>(route);
  }
}
