import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/repositories/index.dart';

@injectable
class CompletedBookModalBloc extends FormBloc<void, String> {
  late final InputFieldBloc<double> rating;
  late final TextFieldBloc review;

  final UserBookModel initial;
  final BooksRepository repository;

  CompletedBookModalBloc({
    @factoryParam required this.initial,
    required this.repository,
  }) {
    rating = InputFieldBloc(
      defaultValue: 0,
      initialValue: initial.rating,
    );

    review = TextFieldBloc(
      initialValue: initial.review,
    );

    addFields([
      rating,
      review,
    ]);
  }

  @override
  FutureOr<void> onSubmit() async {
    emitLoading();

    try {
      //  final response = await  ;

      // emitSuccess(response);
    } catch (e, stackTrace) {
      addError(e, stackTrace);

      emitFailure('Something went wrong!');
    }
  }
}
