import 'package:bloc/bloc.dart';
import 'package:books/Features/home/data/repos/home_repo_impl.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/BookModel.dart';

part 'new_books_state.dart';

class NewBooksCubit extends Cubit<NewBooksState> {
  NewBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());

  final HomeRepoImpl homeRepo;
  Future<void> getBestSellerBook() async
  {
    emit(NewBooksLoading());
    var result = await homeRepo.fetchNewsBooks();
    result.fold((error){
      emit(NewBooksError(error: error.errorMessage));
    }, (books) {
      emit(NewBooksSuccess(books: books));
    });
  }
}
