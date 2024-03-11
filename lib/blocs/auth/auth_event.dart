part of 'auth_bloc.dart';

abstract class _AuthEvent {}

class _AuthenticationStatusChanged extends _AuthEvent {
  final User? user;

  _AuthenticationStatusChanged(this.user);
}

class _SignInWithGoogleEvent extends _AuthEvent {}

class _SignInWithAppleEvent extends _AuthEvent {}

class _SignOut extends _AuthEvent {}
