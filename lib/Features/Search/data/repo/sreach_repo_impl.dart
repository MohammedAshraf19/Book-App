import 'package:books/Core/errors/faliure.dart';
import 'package:books/Core/utils/api_services.dart';
import 'package:books/Features/Search/data/repo/search_repo.dart';
import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo{
  @override
  Future<Either<Failure, List<BookModel>>> searchForBook(String name) async {
    try{
      List<BookModel> bookModel = [];
      final data = await ApiServices.getData(
          endPoint: 'volumes',
        query: {
          'filter':'free-ebooks',
          'q': name,
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
