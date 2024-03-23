import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/screens/search/modals/search_book_details_modal/widgets/index.dart';
import 'package:boo_book/widgets/index.dart';

@RoutePage()
class ViewAllReviewsModal extends StatelessWidget {
  const ViewAllReviewsModal({
    super.key,
    required this.reviews,
  });

  final ListFieldBloc<BookReviewModel> reviews;

  // TODO(Pasha): Add empty case
  @override
  Widget build(BuildContext context) {
    return LandingPageScaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight / 1.5,
        title: Text(
          'Відгуки',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: BlocBuilder<ListFieldBloc<BookReviewModel>,
          ListFieldBlocState<BookReviewModel>>(
        bloc: reviews,
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.value.length,
            itemBuilder: (_, index) {
              return BookReviewCard(
                review: state.value[index],
              );
            },
          );
        },
      ),
    );
  }
}
