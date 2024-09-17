import 'package:books/Features/profile/data/repo/profile_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../auth/data/models/UserModel/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.profileRepo) : super(UserInitial());

  static  UserCubit get(context) => BlocProvider.of(context);
  final ProfileRepo profileRepo;

  Future<void> getUserData(String userId) async{
  emit(GetUserDataLoading());
  final result = await profileRepo.getUserData(userId);

  result.fold((error){
    emit(GetUserDataError(error: error));
    },
          (value){
    value.then((value){
      emit(GetUserDataSuccess(userData: UserData.fromJson(value.data())));
    });
  });
  }
}
