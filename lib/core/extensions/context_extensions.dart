import 'package:flutter/material.dart';

extension ContextTheme on BuildContext {
  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }

  Size get sizeOf {
    return MediaQuery.sizeOf(this);
  }
}
