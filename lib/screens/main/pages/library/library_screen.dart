import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/screens/main/pages/library/library_bloc.dart';
import 'package:boo_book/screens/main/pages/library/widgets/library_book_card.dart';
import 'package:boo_book/styles/index.dart';
import 'package:boo_book/widgets/index.dart';

// TODO(Pasha): Add search and filter

@RoutePage()
class LibraryScreen extends StatelessWidget implements AutoRouteWrapper {
  const LibraryScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    context.read<LibraryBloc>().load();

    return this;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return LandingPageScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Книжкова полиця',
            style: textTheme.titleLarge,
          ),
          BlocBuilder<LibraryBloc, LibraryState>(
            builder: (_, state) {
              return Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.only(
                    top: AppStyleConstants.landingTitleBottomPadding,
                  ),
                  itemCount: state.data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 254,
                  ),
                  itemBuilder: (_, index) {
                    final item = state.data[index];
                    return LibraryBookCard(
                      book: item,
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
