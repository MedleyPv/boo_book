import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  final Widget icon;
  final String text;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        color: AppColors.loginButton.withOpacity(0.25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(),
        ),
        child: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 6),
                Text(
                  text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
