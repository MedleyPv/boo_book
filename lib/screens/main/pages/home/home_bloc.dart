import 'package:darq/darq.dart';
import 'package:injectable/injectable.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/repositories/books_repository.dart';

typedef HomeBlocState
    = NetworkExtraListState<UserBookModel, CalendarBookCollection>;

// TODO(Pasha): add error handlers

@lazySingleton
class HomeBloc extends NetworkListBloc<UserBookModel, HomeBlocState>
    with
        NetworkExtraBaseMixin<List<UserBookModel>, CalendarBookCollection,
            HomeBlocState>,
        NetworkExtraBlocMixin<List<UserBookModel>, CalendarBookCollection,
            HomeBlocState> {
  final String userUid;
  final BooksRepository repository;

  HomeBloc({
    @Named('userUid') required this.userUid,
    required this.repository,
  }) : super(
          const HomeBlocState(
            data: [],
            extraData: {},
          ),
        ) {
    super.network();
  }

  @override
  Future<List<UserBookModel>> onLoadAsync() {
    return repository.getUncompletedBooks(userUid);
  }

  @override
  Future<CalendarBookCollection> onLoadExtraAsync() async {
    final now = DateTime.now();
    final from = DateTime(now.year, now.month, 0);
    final to = DateTime(now.year, now.month + 1, 0);

    final calendarData = await repository.getCalendarData(
      userUid,
      from: from,
      to: to,
    );

    final groupedData = calendarData.groupJoin(
      calendarData,
      (element, other) => {
        element.date: other,
      },
    );

    return {
      for (final data in groupedData)
        data.keys.first: data.values.expand((element) => element).toList(),
    };
  }

  @override
  bool equals(UserBookModel item1, UserBookModel item2) {
    return item1.uid == item2.uid;
  }
}
