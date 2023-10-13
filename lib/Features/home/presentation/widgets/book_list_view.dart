import 'package:books/Features/home/presentation/widgets/book_image.dart';
import 'package:flutter/material.dart';



class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 40,horizontal: 5),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height / 3.5,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return const BookImage();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 8,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 20,
        ),
      ),
    );
  }
}

