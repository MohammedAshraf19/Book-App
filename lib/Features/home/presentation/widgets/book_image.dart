import 'package:books/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:  2.6 / 4,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: AssetImage(Assets.test),
              fit: BoxFit.fill
          ),
        ),
      ),
    );
  }
}
