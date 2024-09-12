import 'package:bloc/bloc.dart';
import 'package:books/Features/auth/data/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

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
     emit(LoginSuccess());
    });
  }
  void changePasswordView(){
    viewPassword = !viewPassword;
    emit(ChangeLoginViewPassword());
  }
}
