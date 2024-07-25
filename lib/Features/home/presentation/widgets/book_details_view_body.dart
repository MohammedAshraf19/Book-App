import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:books/Features/home/presentation/widgets/books_details_section.dart';
import 'package:books/Features/home/presentation/widgets/custom_book_details_appBAr.dart';
import 'package:books/Features/home/presentation/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return    CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(
                  height: 10,
                ),
                 BooksDetailsSection(
                  book: book,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SimilarBooksSection(
                  category: book.volumeInfo!.categories!.isNotEmpty ?book.volumeInfo!.categories![0] : 'programming',
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

