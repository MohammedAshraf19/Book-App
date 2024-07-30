
import 'package:books/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,required this.bookRate,required this.bookRateNumber});
  final dynamic bookRate;
  final dynamic bookRateNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber[300],
          size: 18,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          '${bookRate ?? 0}',
          style: Styles.testStyle18.copyWith(fontSize: 15),
        ),
        const SizedBox(
          width: 3,
        ),
         Opacity(
          opacity: 0.6,
          child: Text(
            '${bookRateNumber ?? 0}',
            style: Styles.testStyle14,
          ),
        ),
      ],
    );
  }
}