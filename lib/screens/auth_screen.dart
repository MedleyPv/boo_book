import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

import 'package:boo_book/blocs/index.dart';
import 'package:boo_book/router/index.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  void _removeSplashScreen() {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    final authStatus = context.watch<AuthBloc>().state.status;

    return AutoRouter.declarative(
      routes: (_) {
        switch (authStatus) {
          case AuthenticationStatus.initial:
            return [];
          case AuthenticationStatus.unauthenticated:
            _removeSplashScreen();
            return [const LoginRoute()];
          case AuthenticationStatus.authenticated:
            _removeSplashScreen();
            return [const HomeRouter()];
        }
      },
    );
  }
}
