import 'package:books/Core/errors/faliure.dart';
import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{

  Future<Either<Failure, List<BookModel>>> searchForBook(String name);
}