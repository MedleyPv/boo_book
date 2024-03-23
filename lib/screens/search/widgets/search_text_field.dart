import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.suffix,
    this.onSubmitted,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;

  final Widget? suffix;
  final void Function(String?)? onSubmitted;

  InputBorder get _border {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
  }

  TextStyle get _textStyle {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: _textStyle,
      focusNode: focusNode,
      controller: controller,
      cursorColor: Colors.black,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.card,
        isDense: true,
        hintText: 'Пошук',
        hintStyle: _textStyle,
        suffixIcon: suffix,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 20,
        ),
        enabledBorder: _border,
        focusedBorder: _border,
      ),
    );
  }
}
