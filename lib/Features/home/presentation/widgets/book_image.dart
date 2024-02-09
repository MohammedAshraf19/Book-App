import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,  this.image,
  });

  final dynamic image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:  2.6 / 4,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image:  DecorationImage(
            image: NetworkImage(image),
              fit: BoxFit.fill
          ),
        ),
      ),
    );
  }
}
