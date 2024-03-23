import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/styles/index.dart';

class BookReviewCard extends StatelessWidget {
  const BookReviewCard({super.key, required this.review});

  final BookReviewModel review;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundImage: NetworkImage(
                  review.userPreview.imageUrl,
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  review.userPreview.displayName,
                  style: textTheme.displayMedium,
                ),
              ),
              RatingBarIndicator(
                itemSize: 22,
                rating: review.rating,
                unratedColor: Colors.grey,
                itemBuilder: (_, index) {
                  return Assets.icons.start.svg();
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            review.description,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
