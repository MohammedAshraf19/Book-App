part of 'user_cubit.dart';

sealed class UserState {}

final class UserInitial extends UserState {}


final class GetUserDataLoading extends UserState{}
final class GetUserDataSuccess extends UserState {
  final UserData userData;

  GetUserDataSuccess({required this.userData});

}
final class GetUserDataError extends UserState {
  final String error;
  GetUserDataError({required this.error});
}