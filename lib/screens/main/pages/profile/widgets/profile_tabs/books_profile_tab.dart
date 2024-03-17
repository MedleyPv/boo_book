import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/widgets/index.dart';

// TODO(Pasha): add placeholders
class BooksProfileTab extends StatelessWidget {
  const BooksProfileTab({
    super.key,
    required this.reading,
    required this.finished,
  });

  final List<UserBookModel> reading;
  final List<UserBookModel> finished;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _BooksContainer(
          title: 'Зараз читаються',
          books: reading,
        ),
        const SizedBox(height: 20),
        _BooksContainer(
          title: 'Прочитані',
          books: finished,
        ),
      ],
    );
  }
}

class _BooksContainer extends StatelessWidget {
  const _BooksContainer({
    required this.title,
    required this.books,
  });

  final String title;
  final List<UserBookModel> books;

  @override
  Widget build(BuildContext context) {
    return BodyContainer(
      title: title,
      counter: books.length,
      childPadding: const EdgeInsets.all(
        20,
      ).copyWith(bottom: 26),
      child: SizedBox(
        height: 112,
        child: ListView.separated(
          itemCount: books.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, __) {
            return const SizedBox(width: 14);
          },
          itemBuilder: (_, index) {
            final book = books[index];

            return SizedBox(
              width: 76,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: book.imageUrl,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
