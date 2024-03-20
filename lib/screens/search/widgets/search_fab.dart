import 'package:boo_book/styles/index.dart';
import 'package:flutter/material.dart';

class SearchFloatingButton extends StatelessWidget {
  const SearchFloatingButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: FittedBox(
        child: FloatingActionButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: AppColors.navigationBar,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Assets.icons.qr.svg(),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
