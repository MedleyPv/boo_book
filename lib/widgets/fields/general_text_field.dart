import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:boo_book/styles/index.dart';

class GeneralTextField extends StatelessWidget {
  const GeneralTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.textInputType,
    this.inputFormatters,
  });

  final String? hintText;
  final TextEditingController controller;

  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;

  InputBorder get _border {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(13),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return TextField(
      controller: controller,
      style: textTheme.displayMedium,
      cursorColor: Colors.black,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        hintText: hintText,
        fillColor: AppColors.card,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.hint,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: _border,
        focusedBorder: _border,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 13,
        ),
      ),
    );
  }
}
