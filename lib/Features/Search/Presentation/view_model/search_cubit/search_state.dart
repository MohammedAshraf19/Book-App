part of 'search_cubit.dart';


sealed class SearchState {}

final class SearchInitial extends SearchState {}
final class SearchLoading extends SearchState {}
final class SearchSuccess extends SearchState {
  List<BookModel> books;
  SearchSuccess({required this.books});
}
final class SearchError extends SearchState {
  String error;
  SearchError({required this.error});
}
