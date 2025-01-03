part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}
final class LoginSuccess extends LoginState {}
final class LoginError extends LoginState {
  final String error;
  LoginError({required this.error});
}

final class LoginWithGoogleLoading extends LoginState{}
final class LoginWithGoogleSuccess extends LoginState {}
final class LoginWithGoogleError extends LoginState {
  final String error;
  LoginWithGoogleError({required this.error});
}

final class ChangeLoginViewPassword extends LoginState{}
