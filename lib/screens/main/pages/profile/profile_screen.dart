import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:boo_book/blocs/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/widgets/index.dart';
import 'widgets/index.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget implements AutoRouteWrapper {
  const ProfileScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    context.read<LibraryBloc>().initLoadAsyncFuture();

    return this;
  }

  @override
  Widget build(BuildContext context) {
    return LandingPageScaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (_, state) {
                return ProfileAvatar(
                  user: state.user!,
                  actionWidget: ProfileActionButton(
                    text: 'Редагувати профіль',
                    onTap: () {
                      // TODO(Pasha): add  modal page
                    },
                  ),
                );
              },
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            sliver: SliverToBoxAdapter(
              child: BlocSelector<LibraryBloc, LibraryState, int>(
                selector: (state) => state.data.length,
                builder: (_, booksAmount) {
                  return ProfileStats(
                    booksAmount: booksAmount,
                    subscribers: 32,
                    subscriptions: 20,
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: BlocBuilder<LibraryBloc, LibraryState>(
              builder: (context, state) {
                final books = state.data;

                final finished = books.finished;
                final reading = books.stillReading;
                final booksWithReview = finished.withReview;

                return ProfileTabs(
                  reading: reading,
                  finished: finished,
                  withReview: booksWithReview,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
