import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

class BooOutlinedButton extends StatelessWidget {
  const BooOutlinedButton({
    super.key,
    required this.title,
    this.style,
    this.padding = const EdgeInsets.symmetric(
      vertical: 11,
      horizontal: 4,
    ),
    required this.onTap,
  });

  final String title;

  final TextStyle? style;
  final EdgeInsets padding;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.navigationBar,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Center(
          child: Padding(
            padding: padding,
            child: Text(
              title,
              style: style ?? Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
      ),
    );
  }
}
