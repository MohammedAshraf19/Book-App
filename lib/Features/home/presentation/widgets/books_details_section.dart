
import 'package:books/Features/home/presentation/widgets/book_action.dart';
import 'package:books/Features/home/presentation/widgets/book_details_view_details.dart';
import 'package:books/Features/home/presentation/widgets/book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 5),
          child: const BookImage(),
        ),
        const SizedBox(
          height: 30,
        ),
        const BookDetailsViewDetails(),
        const BooksAction(),
      ],
    );
  }
}