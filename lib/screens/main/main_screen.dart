import 'package:flutter/material.dart';

import 'package:boo_book/localization/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/styles/index.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);

    const iconHeight = 26.0;

    final bottomPadding = MediaQuery.viewPaddingOf(context).bottom;

    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        LibraryRoute(),
        CommunityRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          height: 68 + bottomPadding,
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            color: AppColors.navigationBar,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: BottomNavigationBar(
            iconSize: 32,
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.transparent,
            currentIndex: tabsRouter.activeIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              if (index == 2) {
                context.pushRoute(const SearchRoute());
              } else {
                tabsRouter.setActiveIndex(
                  index > 2 ? index - 1 : index,
                );
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: tabsRouter.activeIndex == 0
                    ? Assets.icons.homeBold.svg(height: iconHeight)
                    : Assets.icons.home.svg(height: iconHeight),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: tabsRouter.activeIndex == 1
                    ? Assets.icons.libraryBold.svg(height: iconHeight)
                    : Assets.icons.library.svg(height: iconHeight),
                label: 'Library',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.search.svg(),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: tabsRouter.activeIndex == 2
                    ? Assets.icons.communityBold.svg(height: iconHeight - 3)
                    : Assets.icons.community.svg(height: iconHeight - 3),
                label: 'Community',
              ),
              BottomNavigationBarItem(
                icon: tabsRouter.activeIndex == 3
                    ? Assets.icons.profileBold.svg(height: iconHeight)
                    : Assets.icons.profile.svg(height: iconHeight),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
