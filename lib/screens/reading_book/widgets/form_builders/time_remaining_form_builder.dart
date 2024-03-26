import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/core/extensions/general_extensions.dart';
import 'package:boo_book/styles/index.dart';

class TimeRemainingFormBuilder extends StatelessWidget {
  const TimeRemainingFormBuilder({
    super.key,
    required this.formBloc,
  });

  final NumberFieldBloc formBloc;

  String _parseSeconds(int secondsAmount) {
    return IntFormatter(secondsAmount).fullTimeFormat;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NumberFieldBloc, NumberFieldBlocState>(
      bloc: formBloc,
      builder: (_, state) {
        final value = state.value ?? 0;

        if (value == 0) {
          return const SizedBox.shrink();
        }

        return Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 14),
          padding: const EdgeInsets.symmetric(
            vertical: 4,
          ),
          alignment: Alignment.center,
          decoration: const ShapeDecoration(
            color: AppColors.card,
            shape: StadiumBorder(),
          ),
          child: Text(
            _parseSeconds(value),
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
        );
      },
    );
  }
}
