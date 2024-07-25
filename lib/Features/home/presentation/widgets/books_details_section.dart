import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:books/Features/home/presentation/widgets/book_action.dart';
import 'package:books/Features/home/presentation/widgets/book_details_view_details.dart';
import 'package:books/Features/home/presentation/widgets/book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({
    super.key, required this.book,
  });

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 5),
          child:  BookImage(
            image: book.volumeInfo!.imageLinks!.thumbnail,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
         BookDetailsViewDetails(
          book: book,
        ),
         BooksAction(
          price: '${book.volumeInfo!.pageCount}',
        ),
      ],
    );
  }
}