import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/core/extensions/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/screens/reading_book/widgets/numpad_modal_sheet.dart';
import 'package:boo_book/styles/index.dart';
import 'package:boo_book/widgets/index.dart';

class ReadingProgressActionFormBuilder extends StatelessWidget {
  const ReadingProgressActionFormBuilder({
    super.key,
    required this.formBloc,
    required this.currentBook,
    required this.startFrom,
    required this.onStartReading,
  });

  final NumberFieldBloc formBloc;
  final SelectFieldBloc<UserBookModel> currentBook;

  final int? Function() startFrom;
  final void Function(int) onStartReading;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 26,
      ),
      child: Row(
        children: [
          BlocBuilder<NumberFieldBloc, NumberFieldBlocState>(
            bloc: formBloc,
            builder: (context, state) {
              final timerStatus = state.extraData as TimerStatus;

              return TimerButton(
                status: timerStatus,
                onChange: () async {
                  if (timerStatus.isDisabled) {
                    final startPage = await NumpadModalSheet.showNumpad(
                      context,
                      initialNumber: startFrom(),
                    );

                    if (startPage != null) {
                      formBloc.changeExtraData(TimerStatus.active);
                    }
                  } else if (timerStatus.isActive) {
                    formBloc.changeExtraData(TimerStatus.paused);
                  } else {
                    formBloc.changeExtraData(TimerStatus.active);
                  }
                },
              );
            },
          ),
          const SizedBox(width: 16),
          BlocSelector<SelectFieldBloc<UserBookModel>,
              SelectFieldBlocState<UserBookModel>, int>(
            bloc: currentBook,
            selector: (state) => state.value!.progress,
            builder: (context, progress) {
              return Expanded(
                child: BookProgress(
                  progress: progress,
                  bgColor: AppColors.card,
                  percentageStyle: textTheme.titleMedium,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class TimerButton extends StatefulWidget {
  const TimerButton({
    super.key,
    required this.status,
    required this.onChange,
  });

  final TimerStatus status;
  final void Function() onChange;

  @override
  State<TimerButton> createState() => _TimerButtonState();
}

class _TimerButtonState extends State<TimerButton>
    with SingleTickerProviderStateMixin {
  late final _animationController = AnimationController(
    vsync: this,
    value: 1,
    duration: const Duration(milliseconds: 350),
  );

  @override
  void didUpdateWidget(covariant TimerButton oldWidget) {
    if (oldWidget.status != widget.status) {
      switch (oldWidget.status) {
        case TimerStatus.active:
          _animationController.reverse();

        case TimerStatus.paused:
          _animationController.forward();

        case TimerStatus.disabled:
        // Do nothing
      }
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onChange,
      child: Container(
        height: 36,
        width: 36,
        padding: const EdgeInsets.all(1.5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1.4),
        ),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.active,
          ),
          child: widget.status.isDisabled
              ? null
              : Center(
                  child: AnimatedIcon(
                    icon: AnimatedIcons.play_pause,
                    progress: _animationController,
                    color: Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
