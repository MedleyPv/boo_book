import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/widgets/fields/general_text_field.dart';

class TextInputFormBuilder extends StatefulWidget {
  const TextInputFormBuilder({
    super.key,
    required this.fieldBloc,
    this.label = '',
    this.hintText,
    this.isObscureText = false,
    this.fieldFocusNode,
    this.nextFieldFocusNode,
    this.textInputType,
    this.inputFormatters,
    this.onSubmit,
  });

  final String label;
  final String? hintText;

  final bool isObscureText;

  final FocusNode? fieldFocusNode;
  final FocusNode? nextFieldFocusNode;

  final TextFieldBloc fieldBloc;

  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;

  final VoidCallback? onSubmit;

  @override
  State<TextInputFormBuilder> createState() => _TextInputFormBuilderState();
}

class _TextInputFormBuilderState extends State<TextInputFormBuilder> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.fieldBloc.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextFieldBloc, TextFieldBlocState>(
      bloc: widget.fieldBloc,
      builder: (context, state) {
        if (_controller.text != state.value) {
          final previousSelection = _controller.selection;

          final offset =
              min(previousSelection.baseOffset, state.toString().length);

          _controller
            ..text = state.toString()
            ..selection = previousSelection.copyWith(
              baseOffset: offset,
              extentOffset: offset,
            );
        }
        return Focus(
          onFocusChange: (value) {
            if (!value) {
              widget.fieldBloc.focusChanged();
            }
          },
          child: GeneralTextField(
            controller: _controller,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
