import 'package:injectable/injectable.dart';

import 'package:boo_book/core/extensions/list_extensions.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/repositories/index.dart';

typedef SearchState
    = NetworkSearchableExtraListState<BookSearchModel, List<UserBookModel>>;

// TODO(Pasha): Add extra data
@injectable
class SearchBloc
    extends NetworkSearchableListBloc<BookSearchModel, SearchState> {
  // with
  // NetworkExtraBaseMixin<List<UserBookModel>, List<UserBookModel>,
  //     SearchState>,
  // NetworkExtraBlocMixin<List<UserBookModel>, List<UserBookModel>,
  //     SearchState> {
  final SearchRepository searchRepository;
  final BooksRepository booksRepository;

  SearchBloc({
    required this.searchRepository,
    required this.booksRepository,
  }) : super(
          const SearchState(
            data: [],
            visibleData: [],
            extraData: [],
          ),
        );

  @override
  Future<List<BookSearchModel>> onLoadAsync() {
    throw UnimplementedError();
  }

  @override
  Future<List<BookSearchModel>> onSearchAsync(String query) async {
    final response = await searchRepository.searchBooks(query: query);

    return response.items;
  }

  @override
  SearchState onStateChanged(DataChangeReason reason, SearchState state) {
    final visibleData = state.data.unique(id: (book) => book.id);

    return state.copyWith(visibleData: visibleData);
  }

  @override
  bool equals(BookSearchModel item1, BookSearchModel item2) {
    return item1.id == item2.id;
  }
}
