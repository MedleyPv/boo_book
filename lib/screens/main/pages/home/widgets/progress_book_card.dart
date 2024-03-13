import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:boo_book/core/extensions/context_extensions.dart';
import 'package:boo_book/models/index.dart';

class ProgressBookCard extends StatelessWidget {
  const ProgressBookCard({
    super.key,
    required this.book,
  });

  final UserBookModel book;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final availableSpace = MediaQuery.sizeOf(context).width - 80 - 96;

    return SizedBox(
      height: 130,
      child: Row(
        children: [
          CachedNetworkImage(
            width: 84,
            height: 130,
            fit: BoxFit.cover,
            imageUrl: book.imageUrl,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.titleMedium,
                ),
                const SizedBox(height: 6),
                Text(
                  book.author,
                  style: textTheme.titleSmall,
                ),
                const Spacer(),
                _BookProgress(
                  progress: book.progress,
                  width: availableSpace,
                  progressStyle: textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BookProgress extends StatelessWidget {
  const _BookProgress({
    required this.progress,
    required this.width,
    required this.progressStyle,
  });

  final int progress;
  final double width;

  final TextStyle? progressStyle;

  ({double progressWidth, double filledWidth}) get calculateWidth {
    final progressWidth = width - 42;

    final filledWidth = progressWidth * progress / 100;

    return (
      progressWidth: progressWidth,
      filledWidth: filledWidth,
    );
  }

  @override
  Widget build(BuildContext context) {
    final calcWidth = calculateWidth;

    return Row(
      children: [
        SizedBox(
          width: 34,
          child: Text(
            '$progress%',
            style: progressStyle,
          ),
        ),
        const SizedBox(width: 6),
        Stack(
          children: [
            Container(
              height: 8,
              width: calcWidth.progressWidth,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: StadiumBorder(),
              ),
            ),
            Container(
              height: 8,
              width: calcWidth.filledWidth,
              decoration: const ShapeDecoration(
                color: Colors.black,
                shape: StadiumBorder(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
