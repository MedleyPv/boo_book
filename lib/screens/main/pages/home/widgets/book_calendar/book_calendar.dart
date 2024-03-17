import 'package:flutter/material.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/screens/main/pages/home/widgets/book_calendar/calendar_days_grid.dart';
import 'package:boo_book/styles/index.dart';
import 'package:boo_book/widgets/index.dart';

class BookCalendar extends StatefulWidget {
  const BookCalendar({
    super.key,
    required this.calendarBooks,
  });

  final CalendarBookCollection calendarBooks;

  @override
  State<BookCalendar> createState() => _BookCalendarState();
}

class _BookCalendarState extends State<BookCalendar> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return BodyContainer(
      title: 'Календар',
      childPadding: const EdgeInsets.symmetric(
        horizontal: 20,
      ).copyWith(top: 16, bottom: 26),
      topAction: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => setState(() {
          expanded = !expanded;
        }),
        child: Container(
          margin: const EdgeInsets.all(4),
          child: AnimatedRotation(
            turns: expanded ? 0.25 : 0,
            duration: const Duration(milliseconds: 200),
            child: Assets.icons.arrowLeft.svg(),
          ),
        ),
      ),
      child: AnimatedCrossFade(
        firstCurve: Curves.slowMiddle,
        duration: const Duration(milliseconds: 350),
        crossFadeState:
            expanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        firstChild: CalendarDaysGrid(
          showMonth: false,
          calendarBooks: widget.calendarBooks,
        ),
        secondChild: CalendarDaysGrid(
          showMonth: true,
          calendarBooks: widget.calendarBooks,
        ),
      ),
    );
  }
}
