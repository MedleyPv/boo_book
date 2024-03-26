import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/screens/reading_book/reading_book_modal_bloc.dart';
import '../index.dart';

// TODO(Pasha): Add animated list
class RecordsListFormBuilder extends StatelessWidget {
  const RecordsListFormBuilder({
    super.key,
    required this.formBloc,
  });

  final ReadingBookModalBloc formBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListFieldBloc<BookReadingRecord>,
        ListFieldBlocState<BookReadingRecord>>(
      bloc: formBloc.records,
      builder: (context, state) {
        final items = state.value;

        return SliverPadding(
          padding: const EdgeInsets.only(bottom: 50),
          sliver: SliverList.separated(
            itemCount: items.length,
            separatorBuilder: (_, __) {
              return const SizedBox(height: 14);
            },
            itemBuilder: (_, index) {
              return ReadingRecord(
                item: items[index],
              );
            },
          ),
        );
      },
    );
  }
}
