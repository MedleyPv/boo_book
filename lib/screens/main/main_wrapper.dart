import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:boo_book/blocs/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/services/index.dart';
import 'main_state_wrapper.dart';

@RoutePage(name: 'MainRouter')
class MainWrapperScreen extends StatefulWidget {
  const MainWrapperScreen({super.key});

  @override
  State<MainWrapperScreen> createState() => _MainWrapperScreenState();
}

class _MainWrapperScreenState extends State<MainWrapperScreen> {
  @override
  void initState() {
    super.initState();

    final userProfile = context.read<AuthBloc>().state.user!;
    getIt.pushNewScope(
      init: (getIt) => configureUserDependencies(userProfile),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const MainStateWrapper(
      child: AutoRouter(),
    );
  }

  @override
  void dispose() {
    getIt.popScope();

    super.dispose();
  }
}
