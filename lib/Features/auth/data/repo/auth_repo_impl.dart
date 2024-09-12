import 'package:books/Features/auth/data/models/UserModel/user.dart';
import 'package:books/Features/auth/data/repo/auth_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../Core/functions/split_message.dart';

class AuthRepoImpl implements AuthRepo{
  @override
  Future<Either<String,UserCredential>> register({required String name, required String email, required String password}) async {
   try{
     UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
         email: email, password: password
     );
     return right(userCredential);
   }catch(error){
     int found = splitMessage(error);
     return left(error.toString().substring(found));
   }
  }

  @override
  Future<Either<String,UserCredential>> signIn({required String email, required String password}) async {
    try{
      UserCredential userCredential =  await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return right(userCredential);
    }catch(error){
      int found = splitMessage(error);
      return left(error.toString().substring(found));
    }
  }
  @override
  Future<Either<String,String>> storeUserData(UserData userData, String userId) async {
    try{
      FirebaseFirestore.instance.collection('UserBookApp').doc(
        userId
      ).set(userData.toJson());
      return right('Success');
    }
    catch(error){
      int found = splitMessage(error);
      return left(error.toString().substring(found));
    }
  }

  @override
  Future<Either<String, Future<DocumentSnapshot<Map<String, dynamic>>>>> getUserData(String userId) async{
    try{
      Future<DocumentSnapshot<Map<String, dynamic>>> result = FirebaseFirestore.instance.collection('UserBookApp').doc(userId).get();
      return right(result);
    }
    catch(error){
      int found = splitMessage(error);
      return left(error.toString().substring(found));
    }
  }
  @override
  Future<void> signWithGoogle() {
    // TODO: implement signWithGoogle
    throw UnimplementedError();
  }
  
}