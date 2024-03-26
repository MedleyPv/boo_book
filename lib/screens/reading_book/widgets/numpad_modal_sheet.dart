import 'package:flutter/material.dart';

import 'package:boo_book/styles/colors.dart';
import 'package:boo_book/styles/index.dart';

class NumpadModalSheet extends StatefulWidget {
  const NumpadModalSheet({
    super.key,
    this.initialNumber,
    this.hintText,
  });

  final int? initialNumber;
  final String? hintText;

  static Future<int?> showNumpad(
    BuildContext context, {
    int? initialNumber,
    String? hintText = 'Введіть номер\nкрайньої сторінки',
  }) {
    return showModalBottomSheet<int>(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ).copyWith(bottom: 8),
          color: Colors.transparent,
          child: SafeArea(
            child: NumpadModalSheet(
              initialNumber: initialNumber,
              hintText: hintText,
            ),
          ),
        );
      },
    );
  }

  @override
  State<NumpadModalSheet> createState() => _NumpadModalSheetState();
}

class _NumpadModalSheetState extends State<NumpadModalSheet> {
  final _controller = TextEditingController();
  final showHint = ValueNotifier(true);

  @override
  void initState() {
    _controller.addListener(() {
      final text = _controller.text;

      if (text.isEmpty) {
        showHint.value = true;
      } else if (showHint.value) {
        showHint.value = false;
      }
    });

    final initialNumber = widget.initialNumber;
    if (initialNumber != null && initialNumber != 0) {
      _controller.text = '$initialNumber';
    }

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.numpadBg,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 104,
            child: ValueListenableBuilder(
              valueListenable: showHint,
              builder: (_, isHintShown, __) {
                return TextField(
                  controller: _controller,
                  readOnly: true,
                  maxLines: null,
                  expands: true,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.numpadAction,
                    hintText: isHintShown ? widget.hintText : null,
                    hintStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 240,
            child: GridView.builder(
              itemCount: 12,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 52,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (_, index) {
                final numberValue = index == 10 ? 0 : index + 1;

                return switch (index) {
                  // Clear button
                  9 => _NumpadButton(
                      icon: const Icon(
                        Icons.backspace_rounded,
                        color: AppColors.numberButton,
                      ),
                      bgColor: AppColors.disabledColor,
                      onTap: () {
                        final text = _controller.text;

                        if (text.isNotEmpty) {
                          _controller.text = text.substring(0, text.length - 1);
                        }
                      },
                    ),
                  // OK button
                  11 => _NumpadButton(
                      text: 'OK',
                      bgColor: AppColors.numpadAction,
                      textColor: AppColors.numberButton,
                      onTap: () {
                        final number = int.tryParse(_controller.text);

                        return Navigator.pop(context, number);
                      },
                    ),
                  // Number buttons
                  _ => _NumpadButton(
                      text: '$numberValue',
                      onTap: () {
                        _controller.text += '$numberValue';
                      },
                    )
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _NumpadButton extends StatelessWidget {
  const _NumpadButton({
    this.text,
    this.icon,
    required this.onTap,
    this.bgColor = AppColors.numberButton,
    this.textColor = Colors.white,
  }) : assert(icon != null || text != null, 'You have to provide text or icon');

  final String? text;
  final Widget? icon;

  final Color bgColor;
  final Color textColor;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: onTap,
        child: Align(
          child: icon ??
              Text(
                text!,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: textColor,
                ),
              ),
        ),
      ),
    );
  }
}
