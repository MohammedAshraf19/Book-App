part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterSuccess extends RegisterState {}
final class RegisterError extends RegisterState {
  final String error;
  RegisterError({required this.error});
}
final class RegisterLoading extends RegisterState {}
final class ChangeRegisterViewPassword extends RegisterState{}

