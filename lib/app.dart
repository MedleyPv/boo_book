import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:boo_book/app_state_wrapper.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/services/index.dart';
import 'package:boo_book/styles/index.dart';

class BooBook extends StatelessWidget {
  BooBook({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return AppStateWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.getAppTheme(context),
        routerConfig: _appRouter.config(
          navigatorObservers: () => [RouterObserver(LoggerService.instance)],
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
