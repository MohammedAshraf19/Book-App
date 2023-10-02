import 'package:books/Core/utils/assets.dart';
import 'package:books/Core/utils/styles.dart';
import 'package:books/Features/home/presentation/widgets/book_details_view_details.dart';
import 'package:books/Features/home/presentation/widgets/book_details_view_price.dart';
import 'package:books/Features/home/presentation/widgets/book_list_view.dart';
import 'package:books/Features/home/presentation/widgets/book_rating.dart';
import 'package:books/Features/home/presentation/widgets/custom_book_details_appBAr.dart';
import 'package:flutter/material.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBar(),
            const BookDetailsViewDetails(),
            const BookDetailsViewPrice(),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'You Can Also Loke',
                style: Styles.testStyle14.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
