import 'package:books/Features/home/presentation/widgets/book_image.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height / 6,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return const BookImage(
              image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiHqFLMP_n6u8RhHsT-ERKE4xXGiKs6VdqCw&usqp=CAU',
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 8,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 20,
        )
    );
  }
}