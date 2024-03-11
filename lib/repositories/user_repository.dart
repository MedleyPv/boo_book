import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import 'package:boo_book/models/index.dart';

@Injectable(scope: 'auth')
class UserRepository {
  final _client = FirebaseFirestore.instance;

  Future<UserProfile?> getUserProfile(String uid) async {
    final response = await _client.collection('users').doc(uid).get();

    final data = response.data();

    if (data == null || data.isEmpty) {
      return null;
    }

    return UserProfile.fromJson(data);
  }

  Future<void> createUserProfile(UserProfile payload) {
    return _client.collection('users').doc(payload.uid).set(payload.toJson());
  }
}
