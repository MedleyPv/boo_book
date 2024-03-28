import 'package:flutter/material.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/router/index.dart';

@RoutePage()
class UserBookDetailsScreen extends StatelessWidget {
  const UserBookDetailsScreen({
    super.key,
    required this.book,
  });

  final UserBookModel book;

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
