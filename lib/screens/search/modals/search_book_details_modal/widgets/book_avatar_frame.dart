import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

class BookAvatarFrame extends StatelessWidget {
  const BookAvatarFrame({
    super.key,
    required this.imageUrl,
    this.useChangedImage = false,
  });

  final String imageUrl;

  final bool useChangedImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Align(
        child: DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.35),
                blurRadius: 10,
                spreadRadius: 4,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: useChangedImage
                ? CachedNetworkImage(imageUrl: imageUrl)
                : Image.network(
                    imageUrl,
                  ),
          ),
        ),
      ),
    );
  }
}
