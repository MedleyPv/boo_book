import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/styles/index.dart';
import 'package:boo_book/widgets/form_builder/index.dart';

class BookReviewFormBuilder extends StatefulWidget {
  const BookReviewFormBuilder({
    super.key,
    required this.formBloc,
    this.onSave,
  });

  final TextFieldBloc formBloc;
  final VoidCallback? onSave;

  @override
  State<BookReviewFormBuilder> createState() => _BookReviewFormBuilderState();
}

class _BookReviewFormBuilderState extends State<BookReviewFormBuilder> {
  late final StreamSubscription _valueChangeSubscription;

  final showSaveButton = ValueNotifier(false);

  @override
  void initState() {
    _valueChangeSubscription = widget.formBloc.valueStream.listen((review) {
      final isInitUpdated = widget.formBloc.initialValue != review;

      if (isInitUpdated != showSaveButton.value) {
        showSaveButton.value = isInitUpdated;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    showSaveButton.dispose();
    _valueChangeSubscription.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Column(
      children: [
        TextInputFormBuilder(
          fieldBloc: widget.formBloc,
          maxLines: 5,
          label: 'Відгук',
          hintText: 'Додати відгук',
        ),
        ValueListenableBuilder(
          valueListenable: showSaveButton,
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: widget.onSave,
              behavior: HitTestBehavior.opaque,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.5,
                  horizontal: 8,
                ),
                decoration: BoxDecoration(
                  color: AppColors.navigationBar,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Зберегти',
                  style: textTheme.labelSmall,
                ),
              ),
            ),
          ),
          builder: (_, isFocused, child) {
            return AnimatedOpacity(
              opacity: isFocused ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 350),
              child: child,
            );
          },
        ),
      ],
    );
  }
}
