import 'package:books/Core/utils/cache_helper.dart';
import 'package:books/Features/auth/data/models/UserModel/user.dart';
import 'package:books/Features/auth/data/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constant.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);

  final AuthRepo authRepo;
  bool viewPassword = true;
  GlobalKey<FormState> loginFormKey = GlobalKey();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> signIn()async{
    emit(LoginLoading());
    var result = await authRepo.signIn(email: emailController.text, password: passwordController.text);
    result.fold((error)
    {
      emit(LoginError(error: error));
    }, (user){
      CacheHelper().saveData(key: uid, value: user.user!.uid);
      emit(LoginSuccess());
    });
  }

  Future<void> getUserData(String userId) async{
    emit(GetUserDataLoading());
    final result = await authRepo.getUserData(userId);

    result.fold((error){
      emit(GetUserDataError(error: error));
    },
            (value){
      value.then((value){
        myData = UserData.fromJson(value.data());
        emit(GetUserDataSuccess());
      });
    });
  }

  Future<void> loginWithGoogle() async{
    emit(LoginWithGoogleLoading());
    var result = await authRepo.signWithGoogle();
    result.fold((error){
      print('The Error is $error');
      emit(LoginWithGoogleError(error: error));
    }, (value){
      CacheHelper().saveData(key: uid, value: value.user!.uid);
      myData = UserData(
        image: value.user!.photoURL,
        uID: value.user!.uid,
        email: value.user!.email,
        phone: value.user!.phoneNumber,
        name: value.user!.displayName,
      );
      print('THe Data is ${myData.email}');
      emit(LoginWithGoogleSuccess());
    });
  }
  // View Password
  void changePasswordView(){
    viewPassword = !viewPassword;
    emit(ChangeLoginViewPassword());
  }
}
