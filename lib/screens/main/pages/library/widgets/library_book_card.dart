import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/styles/index.dart';
import 'package:boo_book/widgets/index.dart';

class LibraryBookCard extends StatelessWidget {
  const LibraryBookCard({
    super.key,
    required this.book,
  });

  final UserBookModel book;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ).copyWith(bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: book.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: book.completed
                      ? RatingBarIndicator(
                          itemSize: 22,
                          rating: book.rating,
                          unratedColor: Colors.grey,
                          itemBuilder: (_, index) {
                            return Assets.icons.start.svg();
                          },
                        )
                      : BookProgress(
                          progress: book.progress,
                        ),
                ),
                const SizedBox(width: 6),
                Assets.icons.options.svg(width: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
