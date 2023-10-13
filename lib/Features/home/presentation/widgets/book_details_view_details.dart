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
        const Text(
          "The Jungle Book",
          style: Styles.testStyle30,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudgerd Kipling",
            style: Styles.testStyle18.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const BookRating(),
      ],
    );
  }
}