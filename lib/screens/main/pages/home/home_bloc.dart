import 'package:injectable/injectable.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/repositories/books_repository.dart';

typedef HomeBlocState = NetworkListState<UserBookModel>;

// TODO(Pasha): add error handlers

@lazySingleton
class HomeBloc extends NetworkListBloc<UserBookModel, HomeBlocState> {
  final BooksRepository repository;

  HomeBloc({
    required this.repository,
  }) : super(
          const HomeBlocState(
            data: [],
          ),
        );

  @override
  Future<List<UserBookModel>> onLoadAsync() {
    return repository.getUncompletedBooks();
  }

  @override
  bool equals(UserBookModel item1, UserBookModel item2) {
    return item1.uid == item2.uid;
  }
}
