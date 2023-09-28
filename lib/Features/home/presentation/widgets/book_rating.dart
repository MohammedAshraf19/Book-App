
import 'package:books/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 18,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          "4.8",
          style: Styles.testStyle18.copyWith(fontSize: 15),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          "(2852)",
          style: Styles.testStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}