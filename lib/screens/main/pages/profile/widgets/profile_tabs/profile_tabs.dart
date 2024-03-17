import 'package:flutter/material.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/styles/index.dart';
import 'books_profile_tab.dart';
import 'reviews_profile_tab.dart';

class ProfileTabs extends StatefulWidget {
  const ProfileTabs({
    super.key,
    required this.reading,
    required this.finished,
    required this.withReview,
  });

  final List<UserBookModel> reading;
  final List<UserBookModel> finished;
  final List<UserBookModel> withReview;

  @override
  State<ProfileTabs> createState() => _ProfileTabsState();
}

class _ProfileTabsState extends State<ProfileTabs>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  int tabIndex = 0;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 400),
    );

    super.initState();
  }

  void changeTabIndex(int newIndex) {
    if (newIndex == tabIndex) {
      return;
    }

    _animationController.forward(from: 0);

    setState(() {
      tabIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _TabButtonIndicator(
                text: 'Книги',
                selected: tabIndex == 0,
                onTap: () => changeTabIndex(0),
              ),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: _TabButtonIndicator(
                text: 'Відгуки',
                selected: tabIndex == 1,
                onTap: () => changeTabIndex(1),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        FadeTransition(
          opacity: _animationController,
          child: switch (tabIndex) {
            0 => BooksProfileTab(
                reading: widget.reading,
                finished: widget.finished,
              ),
            _ => ReviewsProfileTab(
                booksWithReview: widget.withReview,
              ),
          },
        ),
      ],
    );
  }
}

class _TabButtonIndicator extends StatelessWidget {
  const _TabButtonIndicator({
    required this.text,
    required this.selected,
    required this.onTap,
  });

  final String text;

  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        width: double.infinity,
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 350),
        padding: const EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: selected ? AppColors.navigationBar : AppColors.disabledColor,
        ),
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: textTheme.displayMedium?.copyWith(
            color: selected ? Colors.black : Colors.black54,
          ),
        ),
      ),
    );
  }
}
