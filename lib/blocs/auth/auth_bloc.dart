import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stx_bloc_base/stx_bloc_base.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/repositories/index.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

enum AuthenticationStatus {
  initial,
  unauthenticated,
  authenticated,
}

@Singleton(scope: 'auth')
class AuthBloc extends Bloc<_AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final UserRepository userRepository;

  late StreamSubscription<User?> _subscription;

  AuthBloc({
    required this.authRepository,
    required this.userRepository,
  }) : super(const AuthState()) {
    _subscription = authRepository.authStateChanges.listen((user) {
      add(_AuthenticationStatusChanged(user));
    });

    on<_AuthenticationStatusChanged>(_authenticationStatusChanged);

    on<_SignInWithGoogleEvent>(_onSignInWithGoogle);
    on<_SignInWithAppleEvent>(_onSignInWithApple);

    on<_SignOut>(_signOut);
  }

  void signInWithGoogle() => add(_SignInWithGoogleEvent());
  void signInWithApple() => add(_SignInWithAppleEvent());

  FutureOr<void> _authenticationStatusChanged(
    _AuthenticationStatusChanged event,
    Emitter<AuthState> emit,
  ) async {
    final firebaseUser = event.user;

    if (firebaseUser == null) {
      return emit(AuthState.unauthenticated());
    }

    var userProfile = await userRepository.getUserProfile(firebaseUser.uid);

    if (userProfile == null) {
      userProfile = UserProfile.fromFirebaseUser(firebaseUser);

      await userRepository.createUserProfile(userProfile);
    }

    emit(
      AuthState.authenticated(userProfile),
    );
  }

  FutureOr<void> _onSignInWithGoogle(
    _SignInWithGoogleEvent event,
    Emitter<AuthState> emit,
  ) async {
    // TODO(Pasha): Add error handling
    try {
      await authRepository.signInWithGoogle();
    } catch (e, stackTrace) {
      addError(e, stackTrace);

      emit(AuthState.unauthenticated());
    }
  }

  FutureOr<void> _onSignInWithApple(
    _SignInWithAppleEvent event,
    Emitter<AuthState> emit,
  ) async {
    // TODO(Pasha): Add login with Apple
  }

  FutureOr<void> _signOut(_SignOut event, Emitter<AuthState> emit) {
    return authRepository.signOut();
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}
