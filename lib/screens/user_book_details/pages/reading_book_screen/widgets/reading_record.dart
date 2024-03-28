import 'package:flutter/material.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/localization/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/styles/index.dart';

class ReadingRecord extends StatelessWidget {
  const ReadingRecord({
    super.key,
    required this.item,
  });

  final BookReadingRecord item;

  String get formattedDate {
    return DateFormat('d MMMM', 'uk').format(item.created);
  }

  String get formattedPageCount {
    final pageCount = item.pageCount;

    final prefix = IntFormatter(pageCount).numberTextEnding;

    if (prefix.isEmpty) {
      return '${item.pageCount} сторінок';
    }

    return '${item.pageCount} сторін$prefix';
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  '${item.percentage}%',
                  style: textTheme.labelMedium?.copyWith(fontSize: 25),
                ),
              ),
              Text(
                formattedPageCount,
                style: textTheme.displaySmall?.copyWith(fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: Text(
                  IntFormatter(item.duration).fullTimeFormat,
                  style: textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                formattedDate,
                style: textTheme.displaySmall?.copyWith(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
