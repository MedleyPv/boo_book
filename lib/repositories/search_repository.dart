import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../models/index.dart';

@injectable
class SearchRepository {
  String get endpointUrl => 'https://www.googleapis.com/books/v1/';

  BookSearchModel _converter(DynamicMap json) {
    final itemJson = Map<String, dynamic>.from(json['volumeInfo'])
      ..addAll({
        'id': json['id'],
      });

    return BookSearchModel.fromJson(itemJson);
  }

  Future<BookSearchModel> getBookBySearchId(String id) async {
    final queryUrl = '$endpointUrl' 'volumes/$id' '?projection=lite';

    final response = await http.get(Uri.parse(queryUrl));
    final json = jsonDecode(response.body);

    return _converter(json);
  }

  Future<PaginationResponse<BookSearchModel>> searchBooks({
    required String query,
    PaginationModel pagination = const PaginationModel.initial(),
  }) async {
    final formattedQuery = query.trim().replaceAll(' ', '+');

    final queryUrl = '$endpointUrl'
        'volumes?q=intitle:$formattedQuery'
        '&maxResults=${pagination.limit}'
        '&startIndex=${pagination.startOffset}'
        '&langRestrict="ru"'
        '&printType=books'
        '&projection=lite';

    final response = await http.get(Uri.parse(queryUrl));

    final data = jsonDecode(response.body) as Map<String, dynamic>;

    final totalItems = data['totalItems'] as int;
    final items = (data['items'] as List)
        .cast<DynamicMap>()
        .map((itemsJson) => _converter(itemsJson))
        .toList();

    final newPagination = PaginationModel(
      totalItems: totalItems,
      limit: pagination.limit,
      startOffset: items.length,
    );

    return (
      items: items,
      pagination: newPagination,
    );
  }
}
