import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@Injectable(scope: 'auth')
class AuthRepository {
  final _client = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _client.authStateChanges();

  Future<UserCredential?> signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();

    final googleAuth = await googleUser?.authentication;

    final credentials = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return _client.signInWithCredential(credentials);
  }

  Future<void> signOut() {
    return _client.signOut();
  }
}
