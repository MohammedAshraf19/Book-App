import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRepo{
  Future<Either<String, Future<DocumentSnapshot<Map<String, dynamic>>>>> getUserData(String userId);
}