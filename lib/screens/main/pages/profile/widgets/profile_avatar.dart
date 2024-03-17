import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.user,
    required this.actionWidget,
  });

  final UserProfile user;
  final Widget actionWidget;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: user.imageUrl,
          imageBuilder: (context, imageProvider) {
            return Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 12),
        Text(
          user.displayName,
          textAlign: TextAlign.center,
          style: textTheme.labelLarge?.copyWith(fontSize: 20),
        ),
        const SizedBox(height: 4),
        Text(
          user.nickname,
          style: textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        actionWidget,
      ],
    );
  }
}
