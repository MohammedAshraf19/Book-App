import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:books/Features/home/presentation/view_models/similar_books/similar_book_cubit.dart';
import 'package:books/Features/home/presentation/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    SimilarBooksCubit.get(context).getSimilarBook(
        category: widget.book.volumeInfo!.categories!.isNotEmpty ?
    widget.book.volumeInfo!.categories![0] :
    'Programming');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BookViewDetailsBody(
          book: widget.book,
        ),
      ),
    );
  }
}
