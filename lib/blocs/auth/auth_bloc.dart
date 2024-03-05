import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
    on<_SignOut>(_signOut);
  }

  FutureOr<void> _authenticationStatusChanged(
    _AuthenticationStatusChanged event,
    Emitter<AuthState> emit,
  ) async {
    final firebaseUser = event.user;

    if (firebaseUser == null) {
      return emit(AuthState.unauthenticated());
    }

    emit(AuthState.authenticated(firebaseUser));
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
