import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/book_model/BookModel.dart';
import '../../../data/repos/home_repo.dart';
part 'new_books_state.dart';

class NewBooksCubit extends Cubit<NewBooksState> {
  NewBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());

  static NewBooksCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;
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
