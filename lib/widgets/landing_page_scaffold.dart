import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

// TODO(Pasha): Add filters + sliver app bar
class LandingPageScaffold extends StatelessWidget {
  const LandingPageScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.safeAreaBottom = true,
    this.floatingActionButton,
  });

  final Widget body;

  final bool safeAreaBottom;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      body: SafeArea(
        bottom: safeAreaBottom,
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
