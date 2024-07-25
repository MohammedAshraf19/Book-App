import 'package:books/Core/utils/styles.dart';
import 'package:books/Features/home/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import '../../data/models/book_model/BookModel.dart';

class BookDetailsViewDetails extends StatelessWidget {
  const BookDetailsViewDetails({
    super.key, required this.book,
  });

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          book.volumeInfo!.title!,
          style: Styles.testStyle30,
          maxLines: 2,
           textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo!.authors!.isNotEmpty ? book.volumeInfo!.authors![0] : 'Un Known',
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: Styles.testStyle18.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
         BookRating(
          bookRate: book.volumeInfo!.averageRating,
          bookRateNumber: book.volumeInfo!.ratingsCount,
        ),
      ],
    );
  }
}