import 'package:flutter/material.dart';

import 'package:boo_book/localization/index.dart';
import 'package:boo_book/router/index.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);

    return AutoTabsScaffold(
      routes: const [],
      bottomNavigationBuilder: (_, tabsRouter) {
        return DecoratedBox(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.dashboard),
                label: LocaleKeys.dashboard.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.message),
                label: LocaleKeys.messages.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: LocaleKeys.settings.tr(),
              ),
            ],
          ),
        );
      },
    );
  }
}
