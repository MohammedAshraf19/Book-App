import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/models/book_model/BookModel.dart';
import '../../../data/repos/home_repo.dart';
part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());

   static FeatureBookCubit get(context)=>BlocProvider.of(context);
  final HomeRepo homeRepo;
  Future<void> getFeatureBook()
  async
  {
    emit(FeatureBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((error){
      emit(FeatureBookError(error: error.errorMessage));
    } , (Books) {
      emit(FeatureBookSuccess(books: Books));
    } );
  }
}
