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
final class GetUserDataLoading extends LoginState{}
final class GetUserDataSuccess extends LoginState {}
final class GetUserDataError extends LoginState {
  final String error;
  GetUserDataError({required this.error});
}

final class ChangeLoginViewPassword extends LoginState{}
