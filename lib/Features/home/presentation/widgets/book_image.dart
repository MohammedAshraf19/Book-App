import 'package:books/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:  2.4 / 4,
      child: Container(
        alignment: Alignment.bottomRight,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: AssetImage(Assets.test),
              fit: BoxFit.fill
          ),
        ),
        child: const Icon(
          Icons.slow_motion_video_sharp,
          size: 55,
        ),
      ),
    );
  }
}
