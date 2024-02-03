part of 'feature_book_cubit.dart';

@immutable
abstract class FeatureBookState {}

class FeatureBookInitial extends FeatureBookState {}

class FeatureBookLoading extends FeatureBookState {}
class FeatureBookError extends FeatureBookState {
  final String error;

  FeatureBookError({required this.error});
}
class FeatureBookSuccess extends FeatureBookState {
  final List<BookModel> books;
  FeatureBookSuccess({required this.books});
}
