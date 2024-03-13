import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/styles/index.dart';

class CalendarDaysGrid extends StatelessWidget {
  const CalendarDaysGrid({
    super.key,
    required this.showMonth,
    required this.calendarBooks,
  });

  final bool showMonth;
  final CalendarBookCollection calendarBooks;

  List<DateTime> get _generateDays {
    final int daysCount;
    final DateTime start;

    if (showMonth) {
      final now = DateTime.now();

      daysCount = DateStartTime.dayPerMonth(now);
      start = DateStartTime.monthStart;
    } else {
      daysCount = 7;
      start = DateStartTime.weekStart;
    }

    return List.generate(
      daysCount,
      (index) => start.add(
        Duration(days: index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final days = _generateDays;
    final now = DateTime.now();

    final textTheme = context.textTheme;

    return GridView.builder(
      shrinkWrap: true,
      itemCount: days.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        crossAxisSpacing: 6,
        mainAxisSpacing: 14,
        mainAxisExtent: 100,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        final date = days[index];
        final item = calendarBooks.getByDate(date);

        return _CalendarItem(
          date: date,
          isToday: date.isSameDate(now),
          model: item,
          textStyle: textTheme.displaySmall,
        );
      },
    );
  }
}

class _CalendarItem extends StatelessWidget {
  const _CalendarItem({
    required this.date,
    required this.isToday,
    required this.textStyle,
    this.model,
  });

  final bool isToday;
  final DateTime date;
  final CalendarBookModel? model;

  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          DateFormatUtil.shortDay.format(date).toUpperCase(),
          style: textStyle,
        ),
        const SizedBox(height: 6),
        if (model != null)
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.3),
                borderRadius: BorderRadius.circular(6),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: model!.imageUrl,
                ),
              ),
            ),
          )
        else
          Expanded(
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(6),
              color: AppColors.grey.withOpacity(0.4),
              dashPattern: const [4, 4],
              child: Center(
                child: Icon(
                  Icons.menu_book_rounded,
                  color: AppColors.grey.withOpacity(0.25),
                ),
              ),
            ),
          ),
        const SizedBox(height: 6),
        if (isToday)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: const ShapeDecoration(
              color: AppColors.active,
              shape: StadiumBorder(),
            ),
            child: Text(
              '${date.day}',
              style: textStyle?.copyWith(color: Colors.white),
            ),
          )
        else
          Text(
            '${date.day}',
            style: textStyle,
          ),
      ],
    );
  }
}
