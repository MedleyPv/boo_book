import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:darq/darq.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:boo_book/blocs/index.dart';
import 'package:boo_book/core/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/styles/index.dart';
import 'package:boo_book/widgets/index.dart';
import 'widgets/index.dart';

@RoutePage()
class HomeScreen extends StatelessWidget implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    context.read<HomeBloc>()
      ..load()
      ..loadExtra();

    return this;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final userProfile = context.read<AuthBloc>().state.user!;

    return LandingPageScaffold(
      body: BlocBuilder<HomeBloc, HomeBlocState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                AutoSizeText(
                  'Привіт, ${userProfile.displayName}!',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.titleLarge,
                  maxFontSize:
                      textTheme.titleLarge?.fontSize ?? double.infinity,
                  minFontSize: 20,
                ),
                const SizedBox(height: 26),
                BookCalendar(
                  calendarBooks: state.extraData,
                ),
                const SizedBox(height: 26),
                BodyContainer(
                  title: 'Продовжити читати',
                  topAction: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Assets.icons.arrowLeft.svg(),
                    onTap: () => context.navigateTo(
                      const LibraryRoute(),
                    ),
                  ),
                  child: Column(
                    children: state.data.select(
                      (book, index) {
                        final isLast = index == state.data.length - 1;

                        return Padding(
                          padding: isLast
                              ? EdgeInsets.zero
                              : const EdgeInsets.only(bottom: 15),
                          child: ProgressBookCard(book: book),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
