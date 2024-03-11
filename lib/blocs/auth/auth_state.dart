part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    UserProfile? user,
    @Default(NetworkStatus.initial) NetworkStatus networkStatus,
    @Default(AuthenticationStatus.initial) AuthenticationStatus status,
  }) = _AuthState;

  factory AuthState.authenticated(
    UserProfile userProfile,
  ) =>
      AuthState(
        status: AuthenticationStatus.authenticated,
        user: userProfile,
      );

  factory AuthState.unauthenticated() =>
      const AuthState(status: AuthenticationStatus.unauthenticated);
}
