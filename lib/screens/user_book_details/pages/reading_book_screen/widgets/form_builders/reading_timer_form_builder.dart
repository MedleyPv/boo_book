import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/styles/index.dart';
import '../numpad_modal_sheet.dart';

class ReadingTimerFormBuilder extends StatefulWidget {
  const ReadingTimerFormBuilder({
    super.key,
    required this.formBloc,
    required this.onFinish,
  });

  final NumberFieldBloc formBloc;

  final void Function(int pageCount) onFinish;

  @override
  State<ReadingTimerFormBuilder> createState() =>
      _ReadingTimerFormBuilderState();
}

class _ReadingTimerFormBuilderState extends State<ReadingTimerFormBuilder>
    with SingleTickerProviderStateMixin {
  late TimerStatus timerStatus;

  late final _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  );

  String _getTimerText(int seconds) {
    return IntFormatter(seconds).toHMS;
  }

  @override
  void initState() {
    timerStatus = widget.formBloc.extraData as TimerStatus;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NumberFieldBloc, NumberFieldBlocState>(
      bloc: widget.formBloc,
      listenWhen: (prev, cur) {
        return prev.extraData != cur.extraData;
      },
      listener: (_, state) async {
        final status = state.extraData as TimerStatus;

        if (status.isActive) {
          await _animationController.reverse();
        } else if (status.isPaused) {
          unawaited(_animationController.forward());
        }

        setState(() {
          timerStatus = state.extraData as TimerStatus;
        });
      },
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          child: timerStatus.isDisabled
              ? null
              : Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: timerStatus.isPaused
                        ? MainAxisAlignment.spaceEvenly
                        : MainAxisAlignment.start,
                    children: [
                      SlideTransition(
                        position: _animationController.drive(
                          Tween(begin: const Offset(1.35, 0), end: Offset.zero),
                        ),
                        child: _CustomChip(
                          title: _getTimerText(state.value ?? 0),
                          minWidth: 78,
                          textColor: Colors.white,
                          bgColor: timerStatus.isActive
                              ? AppColors.active
                              : AppColors.timer,
                        ),
                      ),
                      SlideTransition(
                        position: _animationController.drive(
                          Tween(begin: const Offset(3, 0), end: Offset.zero),
                        ),
                        child: timerStatus.isPaused
                            ? _CustomChip(
                                title: 'Продовжити',
                                onTap: () => widget.formBloc.changeExtraData(
                                  TimerStatus.active,
                                ),
                              )
                            : null,
                      ),
                      SlideTransition(
                        position: _animationController.drive(
                          Tween(begin: const Offset(3, 0), end: Offset.zero),
                        ),
                        child: timerStatus.isPaused
                            ? _CustomChip(
                                title: 'Завершити',
                                onTap: () async {
                                  final pageCount =
                                      await NumpadModalSheet.showNumpad(
                                    context,
                                  );

                                  if (pageCount == null) {
                                    return;
                                  }

                                  widget.onFinish(pageCount);
                                  widget.formBloc.changeExtraData(
                                    TimerStatus.disabled,
                                  );
                                },
                              )
                            : null,
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}

class _CustomChip extends StatelessWidget {
  const _CustomChip({
    required this.title,
    this.minWidth = 0,
    this.bgColor = AppColors.card,
    this.textColor = Colors.black,
    this.onTap,
  });

  final String title;
  final double minWidth;

  final Color bgColor;
  final Color? textColor;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = context.textTheme;

    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 11,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: minWidth),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: theme.labelMedium?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
