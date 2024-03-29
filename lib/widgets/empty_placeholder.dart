import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

class EmptyPlaceholder extends StatelessWidget {
  const EmptyPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Assets.images.emptyShelf.image(),
        ),
        Text(
          'На жаль, тут нічого немає',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: AppColors.hint),
        ),
      ],
    );
  }
}
