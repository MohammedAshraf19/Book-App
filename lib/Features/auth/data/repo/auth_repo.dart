import 'package:books/Features/auth/data/models/UserModel/user.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo{
  Future<Either<String,UserCredential>> signIn({required String email, required String password});
  Future<Either<String,UserCredential>> signWithGoogle();
  Future<Either<String,UserCredential>> register({required String name, required String email, required String password});
  Future<Either<String,String>> storeUserData(UserData userData, String userId);
}