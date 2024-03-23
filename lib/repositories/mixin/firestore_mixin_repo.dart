import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirestoreMixinRepo {
  final String userUid;

  final client = FirebaseFirestore.instance;

  FirestoreMixinRepo({required this.userUid});

  DocumentReference userDoc() {
    return client.collection('users').doc(userUid);
  }
}
