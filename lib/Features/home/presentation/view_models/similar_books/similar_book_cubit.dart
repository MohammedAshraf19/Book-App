import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'similar_book_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBookInitial());
  static SimilarBooksCubit get(context)=>BlocProvider.of(context);

  final HomeRepo homeRepo;
  Future<void> getSimilarBook({
    required String category
})async {
    emit(GetSimilarBooksLoading());
    final result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((error){
      emit(GetSimilarBooksError(error: error.errorMessage));
    }, (books) {
      emit(GetSimilarBooksSuccess(books: books));
    });
  }
}
