import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:boo_book/styles/index.dart';

class GeneralTextField extends StatelessWidget {
  const GeneralTextField({
    super.key,
    this.focusNode,
    required this.controller,
    this.hintText,
    this.maxLines = 1,
    this.textInputType,
    this.inputFormatters,
    this.onChange,
  });

  final FocusNode? focusNode;
  final TextEditingController controller;

  final int? maxLines;
  final String? hintText;

  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;

  final void Function(String)? onChange;

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
      focusNode: focusNode,
      style: textTheme.displayMedium,
      cursorColor: Colors.black,
      maxLines: maxLines,
      keyboardType: textInputType,
      textInputAction: TextInputAction.done,
      inputFormatters: inputFormatters,
      onChanged: onChange,
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
