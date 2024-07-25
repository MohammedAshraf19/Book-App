import 'package:books/Core/utils/styles.dart';
import 'package:books/Features/home/presentation/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({
    super.key, required this.category,
  });

  final String  category;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'You Can Also Like',
            style: Styles.testStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
         SimilarBookListView(category: category,),
      ],
    );
  }
}