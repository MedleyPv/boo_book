import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:boo_book/blocs/index.dart';
import 'package:boo_book/core/extensions/context_extensions.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/screens/main/pages/home/home_bloc.dart';
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

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeBlocState>(
          builder: (context, state) {
            return SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 14),
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
                      children: state.data
                          .map((book) => ProgressBookCard(book: book))
                          .toList(),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}