import 'package:books/Core/errors/faliure.dart';
import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
  Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}