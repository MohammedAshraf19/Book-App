import 'package:books/Core/utils/assets.dart';
import 'package:books/Core/utils/styles.dart';
import 'package:books/Features/home/presentation/widgets/book_image.dart';
import 'package:books/Features/home/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsViewDetails extends StatelessWidget {
  const BookDetailsViewDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 5),
          child: const BookImage(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.testStyle20,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Rudgerd Kipling",
          style: Styles.testStyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        const BookRating(),
      ],
    );
  }
}