import 'package:flutter/material.dart';

import 'package:boo_book/core/index.dart';

class BookProgress extends StatelessWidget {
  const BookProgress({
    super.key,
    required this.progress,
  });

  final int progress;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Row(
      children: [
        SizedBox(
          width: 34,
          child: Text(
            '$progress%',
            style: textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: CustomPaint(
            painter: _ProgressPainter(
              value: progress.toDouble(),
              maxValue: 100,
              backgroundColor: Colors.white,
              progressColor: Colors.black,
            ),
            child: const SizedBox(
              height: 6,
            ),
          ),
        ),
      ],
    );
  }
}

class _ProgressPainter extends CustomPainter {
  final double value; // Current progress value (0.0 to 1.0)
  final double maxValue; // Maximum progress value
  final Color backgroundColor; // Background color of the slider track
  final Color progressColor; // Color of the progress bar

  _ProgressPainter({
    required this.value,
    required this.maxValue,
    required this.backgroundColor,
    required this.progressColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const strokeWidth = 4.0;
    const radius = Radius.circular(6);

    final paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill
      ..strokeWidth = strokeWidth; // Adjust stroke width as needed

    final path = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          radius,
        ),
      );

    canvas.drawPath(path, paint);

    final progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.fill
      ..strokeWidth = strokeWidth;

    final progress = (value / maxValue) * size.width;

    final progressPath = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, progress, size.height),
          radius,
        ),
      );

    canvas.drawPath(progressPath, progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
