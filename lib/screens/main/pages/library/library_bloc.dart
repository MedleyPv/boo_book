import 'package:injectable/injectable.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/repositories/books_repository.dart';

typedef LibraryState = NetworkListState<UserBookModel>;

@lazySingleton
class LibraryBloc extends NetworkListBloc<UserBookModel, LibraryState> {
  final BooksRepository repository;

  LibraryBloc({
    required this.repository,
  }) : super(const LibraryState(data: []));

  @override
  Future<List<UserBookModel>> onLoadAsync() {
    return repository.getUserBooks();
  }

  @override
  bool equals(UserBookModel item1, UserBookModel item2) {
    return item1.uid == item2.uid;
  }
}
