import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    super.key,
    required this.title,
    required this.child,
    this.topAction,
    this.counter,
    this.childPadding,
  });

  final String title;
  final int? counter;
  final Widget? topAction;

  final EdgeInsets? childPadding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(
              20,
            ).copyWith(bottom: 0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        title,
                        style: textTheme.labelLarge,
                      ),
                      if (counter != null) ...[
                        const SizedBox(width: 6),
                        Container(
                          margin: const EdgeInsets.only(top: 1),
                          padding: const EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.greyLight,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Text(
                            '$counter',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (topAction != null) topAction!,
              ],
            ),
          ),
          Padding(
            padding: childPadding ??
                const EdgeInsets.symmetric(
                  horizontal: 20,
                ).copyWith(top: 10, bottom: 26),
            child: child,
          ),
        ],
      ),
    );
  }
}
