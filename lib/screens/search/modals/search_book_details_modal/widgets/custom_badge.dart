import 'package:flutter/widgets.dart';

import 'package:boo_book/styles/index.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
    required this.number,
  });

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      constraints: const BoxConstraints(minWidth: 20, minHeight: 17),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.navigationBar,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        '$number',
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
