import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/screens/reading_book/reading_book_modal_bloc.dart';

class RecordsTitleBuilder extends StatelessWidget {
  const RecordsTitleBuilder({
    super.key,
    required this.formBloc,
  });

  final ReadingBookModalBloc formBloc;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ListFieldBloc<BookReadingRecord>,
        ListFieldBlocState<BookReadingRecord>, bool>(
      bloc: formBloc.records,
      selector: (state) => state.value.isNotEmpty,
      builder: (_, showTitle) {
        return SliverToBoxAdapter(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 350),
            child: showTitle
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Щоденник',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  )
                : null,
          ),
        );
      },
    );
  }
}
