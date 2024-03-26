import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirestoreMixinRepo<T> {
  final String userUid;

  final client = FirebaseFirestore.instance;

  FirestoreMixinRepo({required this.userUid});

  CollectionReference<T> collectionReference();

  DocumentReference userDoc() {
    return client.collection('users').doc(userUid);
  }
}
