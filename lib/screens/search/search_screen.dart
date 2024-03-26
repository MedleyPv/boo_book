import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/services/index.dart';
import 'package:boo_book/styles/index.dart';
import 'package:boo_book/widgets/index.dart';
import 'search_bloc.dart';
import 'widgets/index.dart';

@RoutePage()
class SearchScreen extends StatelessWidget implements AutoRouteWrapper {
  const SearchScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SearchBloc>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return LandingPageScaffold(
      appBar: AppBar(
        leading: const CloseButton(),
        title: Text(
          'Пошук',
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButton: SearchFloatingButton(
        onPressed: () {
          // TODO(Pasha): Add on Presseds
        },
      ),
      body: Column(
        children: [
          const SearchRow(),
          const SizedBox(height: 10),
          BlocBuilder<SearchBloc, SearchState>(
            builder: (_, state) {
              // TODO(Pasha): Add books
              if (state.status.isInitial) {
                return const SizedBox.shrink();
              }

              if (state.status.isLoading) {
                return const CircularProgressIndicator.adaptive();
              }

              // TODO(Pasha): add empty and error widgets
              return Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.card,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView.separated(
                    itemCount: state.visibleData.length,
                    padding: const EdgeInsets.all(
                      20,
                    ).copyWith(bottom: 28),
                    separatorBuilder: (_, __) {
                      return const SizedBox(height: 14);
                    },
                    itemBuilder: (_, index) {
                      final searchBook = state.visibleData[index];

                      return SearchBookCard(
                        searchModel: searchBook,
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
