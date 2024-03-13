import 'package:cloud_firestore/cloud_firestore.dart';

mixin FirestoreMixinRepo {
  final client = FirebaseFirestore.instance;

  DocumentReference userDoc(String userUid) {
    return client.collection('users').doc(userUid);
  }
}
