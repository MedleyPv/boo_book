part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? firebaseUser,
    @Default(AuthenticationStatus.initial) AuthenticationStatus status,
  }) = _AuthState;

  factory AuthState.authenticated(
    User firebaseUser,
  ) =>
      AuthState(
        status: AuthenticationStatus.authenticated,
        firebaseUser: firebaseUser,
      );

  factory AuthState.unauthenticated() =>
      const AuthState(status: AuthenticationStatus.unauthenticated);
}
