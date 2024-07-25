part of 'similar_book_cubit.dart';

sealed class SimilarBooksState {}

final class SimilarBookInitial extends SimilarBooksState {}

final class GetSimilarBooksLoading extends SimilarBooksState {}
final class GetSimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;
  GetSimilarBooksSuccess({required this.books});
}
final class GetSimilarBooksError extends SimilarBooksState {
  final String error;

  GetSimilarBooksError({required this.error});
}
