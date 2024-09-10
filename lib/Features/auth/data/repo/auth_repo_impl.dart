import 'package:books/Features/auth/data/repo/auth_repo.dart';
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
  Future<void> signWithGoogle() {
    // TODO: implement signWithGoogle
    throw UnimplementedError();
  }

  
}