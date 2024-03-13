import 'package:flutter/material.dart';

import 'package:boo_book/localization/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/styles/index.dart';

// TODO(Pasha): Fix nav bar jumping

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);

    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        LibraryRoute(),
        CommunityRoute(),
        ProfileRoute(),
      ],
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
            currentIndex: tabsRouter.activeIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              if (index == 2) {
                // TODO(Pasha): add navigation to search page
              } else {
                tabsRouter.setActiveIndex(
                  index > 2 ? index - 1 : index,
                );
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: tabsRouter.activeIndex == 0
                    ? Assets.icons.homeBold.svg()
                    : Assets.icons.home.svg(),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: tabsRouter.activeIndex == 1
                    ? Assets.icons.libraryBold.svg()
                    : Assets.icons.library.svg(),
                label: 'Library',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.search.svg(),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: tabsRouter.activeIndex == 2
                    ? Assets.icons.communityBold.svg()
                    : Assets.icons.community.svg(),
                label: 'Community',
              ),
              BottomNavigationBarItem(
                icon: tabsRouter.activeIndex == 3
                    ? Assets.icons.profileBold.svg()
                    : Assets.icons.profile.svg(),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
