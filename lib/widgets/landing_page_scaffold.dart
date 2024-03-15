import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

// TODO(Pasha): Refactor to sliver app bar
class LandingPageScaffold extends StatelessWidget {
  const LandingPageScaffold({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppStyleConstants.landingHPadding,
          ).copyWith(top: AppStyleConstants.landingTopPadding),
          child: body,
        ),
      ),
    );
  }
}
