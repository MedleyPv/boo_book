import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(scope: 'auth')
class AuthRepository {
  final _client = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _client.authStateChanges();

  Future<void> signOut() {
    return _client.signOut();
  }
}
