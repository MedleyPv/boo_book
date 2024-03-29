import 'package:flutter/material.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/styles/index.dart';

class BookAnalytics extends StatelessWidget {
  const BookAnalytics({
    super.key,
    required this.book,
  });

  final UserBookModel book;

  String get pagesPerHour {
    return (book.pagesPerSecond * 3600).toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _AnalyticsCard(
                title: 'Кількість сторінок',
                value: '${book.pageCount}',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _AnalyticsCard(
                title: 'Середня швидкість',
                value: '$pagesPerHour ст/год',
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: _AnalyticsCard(
                title: 'Дата початку',
                value: DateFormatUtil.defaultDate.format(book.started!),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _AnalyticsCard(
                title: 'Дата закінчення',
                value: DateFormatUtil.defaultDate.format(book.lastRed!),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        _AnalyticsCard(
          title: 'Загальний час читання',
          value: IntFormatter(book.readingDuration).fullTimeFormat,
        ),
      ],
    );
  }
}

class _AnalyticsCard extends StatelessWidget {
  const _AnalyticsCard({
    required this.title,
    required this.value,
  });

  final String title;

  final String value;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 14,
      ).copyWith(left: 18, right: 8),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textTheme.displaySmall?.copyWith(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textTheme.labelLarge?.copyWith(
              fontSize: 23,
            ),
          ),
        ],
      ),
    );
  }
}
