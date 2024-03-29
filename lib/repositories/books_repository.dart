import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import 'package:boo_book/models/books/models.dart';
import 'package:boo_book/repositories/mixin/firestore_mixin_repo.dart';

@injectable
class BooksRepository extends FirestoreMixinRepo<UserBookModel> {
  BooksRepository({
    @Named('userUid') required super.userUid,
  });

  @override
  CollectionReference<UserBookModel> collectionReference() {
    return userDoc().collection('books').withConverter(
          fromFirestore: (snapshot, _) => UserBookModel.fromSnapshot(snapshot),
          toFirestore: (payload, _) => payload.toJson(),
        );
  }

  Future<List<UserBookModel>> getUncompletedBooks() async {
    final response = await collectionReference()
        .where('completed', isNotEqualTo: true)
        .get();

    return response.docs.map((doc) => doc.data()).toList();
  }

  Future<List<UserBookModel>> getUserBooks() async {
    final response = await collectionReference().get();

    return response.docs.map((doc) => doc.data()).toList();
  }

  Future<UserBookModel> addBookToCollection(
    UserBookModel payload,
  ) async {
    final response = await collectionReference().add(payload);

    return payload.copyWith(uid: response.id);
  }

  Future<void> updateBook(UserBookModel payload) {
    return collectionReference().doc(payload.uid).set(payload);
  }
}
