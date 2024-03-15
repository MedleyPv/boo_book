import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:boo_book/blocs/auth/auth_bloc.dart';
import 'package:boo_book/core/index.dart';
import 'package:boo_book/styles/index.dart';
import 'widgets/index.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final screenHeight = context.sizeOf.height;

    return LoginScaffold(
      shadowHeight: screenHeight * 0.45,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.08,
            horizontal: 42,
          ),
          child: Column(
            children: [
              const Text(
                'Boo Book',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'Читаючі завжди мають щастя',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Spacer(),
              LoginButton(
                icon: Assets.icons.apple.svg(),
                text: 'Вхід з Apple',
                onTap: () {},
              ),
              const SizedBox(height: 10),
              LoginButton(
                icon: Assets.icons.google.svg(),
                text: 'Вхід з Google',
                onTap: authBloc.signInWithGoogle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
