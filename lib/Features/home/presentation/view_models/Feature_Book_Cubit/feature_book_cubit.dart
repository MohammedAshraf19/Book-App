import 'package:books/Features/home/data/repos/home_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/BookModel.dart';
part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());

  final HomeRepoImpl homeRepo;
  Future<void> getFeatureBook()
  async
  {
    emit(FeatureBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((Error){
      emit(FeatureBookError(error: Error.errorMessage));
    } , (Books) {
      emit(FeatureBookSuccess(books: Books));
    } );
  }
}
