import 'package:books/Core/errors/faliure.dart';
import 'package:books/Core/utils/api_services.dart';
import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo
{
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async{
    try{
      List<BookModel> bookModel = [];
      var data = await ApiServices.getData(
        endPoint: 'volumes',
        query: {
          'q':'Programming',
        },
      );
      for (var item in data.data["items"])
      {
        bookModel.add(BookModel.fromJson(item));
      }
      return right(bookModel);
    }
    catch(e){
      if (e is DioException) {
        return  left(ServerFailure.fromDioException(e));
      }
      return  left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try{
      List<BookModel> bookModel = [];
      var data = await ApiServices.getData(
        endPoint: 'volumes',
        query: {
          'q':'Mobile Application Development',
        },
      );
      for (var item in data.data["items"])
      {
        bookModel.add(BookModel.fromJson(item));
      }
      return right(bookModel);
    }
    catch(e){
      if (e is DioException) {
        return  left(ServerFailure.fromDioException(e));
      }
      return  left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async{
    try{
      List<BookModel> bookModel = [];
      var data = await ApiServices.getData(
        endPoint: 'volumes',
        query: {
          'q': category,
        },
      );
      for (var item in data.data["items"])
      {
        bookModel.add(BookModel.fromJson(item));
      }
      return right(bookModel);
    }
    catch(e){
      if (e is DioException) {
        return  left(ServerFailure.fromDioException(e));
      }
      return  left(ServerFailure(e.toString()));
    }
  }
}