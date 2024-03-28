import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:boo_book/core/extensions/context_extensions.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/router/router.gr.dart';
import 'package:boo_book/widgets/index.dart';

class ProgressBookCard extends StatelessWidget {
  const ProgressBookCard({
    super.key,
    required this.book,
  });

  final UserBookModel book;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return GestureDetector(
      onTap: () => context.pushRoute(
        UserBookDetailsRoute(book: book),
      ),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            CachedNetworkImage(
              width: 84,
              height: 130,
              imageUrl: book.imageUrl,
              imageBuilder: (_, imageProvider) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
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
                  BookProgress(
                    progress: book.progress,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
