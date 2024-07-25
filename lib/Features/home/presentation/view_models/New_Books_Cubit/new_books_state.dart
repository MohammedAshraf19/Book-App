part of 'new_books_cubit.dart';
abstract class NewBooksState {}

class BestSellerBooksInitial extends NewBooksState {}

class NewBooksLoading extends NewBooksState {}
class NewBooksError extends NewBooksState {
  final String error;

  NewBooksError({required this.error});
}
class NewBooksSuccess extends NewBooksState {
  final List<BookModel> books;

  NewBooksSuccess({required this.books});
}

