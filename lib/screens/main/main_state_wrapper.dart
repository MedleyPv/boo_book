import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:boo_book/screens/main/pages/home/home_bloc.dart';
import 'package:boo_book/services/index.dart';

class MainStateWrapper extends StatelessWidget {
  const MainStateWrapper({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<HomeBloc>(),
          lazy: false,
        ),
      ],
      child: child,
    );
  }
}
