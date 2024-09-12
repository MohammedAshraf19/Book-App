import 'package:books/Features/auth/data/models/UserModel/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo{
  Future<Either<String,UserCredential>> signIn({required String email, required String password});
  Future<void> signWithGoogle();
  Future<Either<String,UserCredential>> register({required String name, required String email, required String password});
  Future<Either<String,String>> storeUserData(UserData userData, String userId);
  Future<Either<String, Future<DocumentSnapshot<Map<String, dynamic>>>>> getUserData(String userId);
}