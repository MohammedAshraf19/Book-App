import 'package:books/Features/auth/data/models/UserModel/user.dart';
import 'package:books/Features/auth/data/repo/auth_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterInitial());
  static  RegisterCubit get(context) => BlocProvider.of(context);

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  GlobalKey<FormState> registerFormKey = GlobalKey();
  bool viewPassword = true;
  final AuthRepo authRepo;


  Future<void> register()async{
    emit(RegisterLoading());
    var result = await authRepo.register(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text
    );
    result.fold((error){
      emit(RegisterError(
        error: error
      ));
    }, (user){
      storeUserData(user.user!.uid);
    });
  }

  Future<void> storeUserData(String userId) async{
    emit(StoreUserDataLoading());
    UserData userData = UserData(
      name: nameController.text,
      phone: phoneController.text,
      email: emailController.text,
      uID: userId,
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwdIVSqaMsmZyDbr9mDPk06Nss404fosHjLg&s',
    );
    var result = await authRepo.storeUserData(
        userData,
        userId
    );
    result.fold(
            (error){
              emit(StoreUserDataError(error: error));
            },
            (success){
              emit(RegisterSuccess());
            }
    );
  }

  // View Password
  void changePasswordView(){
    viewPassword = !viewPassword;
    emit(ChangeRegisterViewPassword());
  }
}
