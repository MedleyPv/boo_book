import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

class LoginScaffold extends StatelessWidget {
  const LoginScaffold({
    super.key,
    required this.shadowHeight,
    required this.body,
  });

  final double shadowHeight;

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.images.loginBg.provider(),
              fit: BoxFit.cover,
            ),
          ),
        ),
        _LoginShadowContainer(
          height: shadowHeight,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: _LoginShadowContainer(
            height: shadowHeight,
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: body,
        ),
      ],
    );
  }
}

class _LoginShadowContainer extends StatelessWidget {
  const _LoginShadowContainer({
    required this.height,
    required this.begin,
    required this.end,
  });

  final double height;

  final Alignment begin;
  final Alignment end;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Colors.white,
            Colors.transparent,
          ],
          begin: begin,
          end: end,
        ),
      ),
    );
  }
}
