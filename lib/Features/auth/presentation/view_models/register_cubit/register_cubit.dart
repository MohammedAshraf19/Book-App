import 'package:bloc/bloc.dart';
import 'package:books/Features/auth/data/repo/auth_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterInitial());
  static  RegisterCubit get(context) => BlocProvider.of(context);

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool viewPassword = true;
  final AuthRepo authRepo;
  Future<void> register()async{
    emit(RegisterLoading());
    var result = await authRepo.register(name: nameController.text, email: emailController.text, password: passwordController.text);
    result.fold((error){;
      emit(RegisterError(
        error: error
      ));
    }, (user){
      emit(RegisterSuccess());
    });
  }
  void changePasswordView(){
    viewPassword = !viewPassword;
    emit(ChangeRegisterViewPassword());
  }
}
