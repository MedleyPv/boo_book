import 'package:flutter/material.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/router/index.dart';

class SearchBookCard extends StatelessWidget {
  const SearchBookCard({
    super.key,
    required this.searchModel,
  });

  final BookSearchModel searchModel;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return GestureDetector(
      onTap: () => context.pushRoute(
        SearchBookDetailsModalRoute(
          initial: searchModel,
        ),
      ),
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        height: 74,
        child: Row(
          children: [
            SizedBox(
              height: 74,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  searchModel.imageLinks.thumbnail,
                  fit: BoxFit.fill,
                  errorBuilder: (_, __, ___) {
                    return const Icon(Icons.image);
                  },
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    searchModel.title,
                    style: textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Flexible(
                    child: Text(
                      searchModel.authors.firstOrNull ?? '',
                      style: textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
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
