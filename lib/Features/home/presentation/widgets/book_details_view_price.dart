
import 'package:books/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewPrice extends StatelessWidget {
  const BookDetailsViewPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 35),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)
                ),
              ),
              height: 50,
              child: Text(
                "19.9 \$",
                style: Styles.testStyle20.copyWith(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    topRight: Radius.circular(15)
                ),
              ),
              height: 50,
              child: const Text(
                "Free Preview",
                style: Styles.testStyle16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

