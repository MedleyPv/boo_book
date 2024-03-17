import 'package:flutter/material.dart';

import 'package:boo_book/core/index.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({
    super.key,
    required this.booksAmount,
    required this.subscribers,
    required this.subscriptions,
  });

  final int booksAmount;
  final int subscribers;
  final int subscriptions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _InfoItem(
            number: subscribers,
            label: 'Підписники',
          ),
          // TODO(Pasha): add Книга, Книги
          _InfoItem(
            number: booksAmount,
            label: 'Книг',
          ),
          _InfoItem(
            number: subscriptions,
            label: 'Підписки',
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({
    required this.number,
    required this.label,
  });

  final int number;
  final String label;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$number',
          style: textTheme.labelLarge?.copyWith(
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: textTheme.titleSmall?.copyWith(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
