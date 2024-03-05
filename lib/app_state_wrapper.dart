import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:boo_book/blocs/index.dart';
import 'package:boo_book/services/index.dart';

class AppStateWrapper extends StatelessWidget {
  const AppStateWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
      ],
      child: child,
    );
  }
}
