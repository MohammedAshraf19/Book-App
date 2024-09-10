import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo{
  Future<Either<String,UserCredential>> signIn({required String email, required String password});
  Future<void> signWithGoogle();
  Future<Either<String,UserCredential>> register({required String name, required String email, required String password});
}