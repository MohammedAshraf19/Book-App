import 'package:books/Features/profile/data/repo/profile_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../../../Core/functions/split_message.dart';

class ProfileRepoImpl implements ProfileRepo{

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

}