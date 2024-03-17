import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/styles/index.dart';

class ReviewsProfileTab extends StatelessWidget {
  const ReviewsProfileTab({
    super.key,
    required this.booksWithReview,
  });

  final List<UserBookModel> booksWithReview;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: booksWithReview.length,
      separatorBuilder: (_, __) {
        return const SizedBox(height: 10);
      },
      itemBuilder: (_, index) {
        final book = booksWithReview[index];

        return _ReviewItem(book: book);
      },
    );
  }
}

class _ReviewItem extends StatelessWidget {
  const _ReviewItem({required this.book});

  final UserBookModel book;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ).copyWith(top: 12, bottom: 14),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
                height: 30,
                child: CachedNetworkImage(
                  imageUrl: book.imageUrl,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    book.title,
                    style: textTheme.displaySmall?.copyWith(fontSize: 13),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: RatingBarIndicator(
                  itemSize: 22,
                  rating: book.rating,
                  unratedColor: Colors.grey,
                  itemBuilder: (_, index) {
                    return Assets.icons.start.svg();
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            book.review,
            style: textTheme.titleSmall?.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
