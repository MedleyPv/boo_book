import 'package:flutter/material.dart';

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
