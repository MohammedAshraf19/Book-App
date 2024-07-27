import 'package:bloc/bloc.dart';
import 'package:books/Features/Search/data/repo/search_repo.dart';
import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  static SearchCubit get(context) => BlocProvider.of(context);
  final SearchRepo searchRepo;
  void search(String name) async{
    emit(SearchLoading());
    final result = await searchRepo.searchForBook(name);
    result.fold((Error) {
      emit(SearchError(error: Error.errorMessage));
    }, (books) {
      emit(SearchSuccess(books: books));
    });
  }
}
