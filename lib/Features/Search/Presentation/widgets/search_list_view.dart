import 'package:books/Features/home/presentation/widgets/best_seller_lisView_item.dart';
import 'package:flutter/material.dart';

import '../../../home/data/models/book_model/BookModel.dart';
import '../../../home/data/models/book_model/ImageLinks.dart';
import '../../../home/data/models/book_model/VolumeInfo.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 20),
      itemBuilder: (context, index) =>  BestSellerListViewItem(
        book: BookModel(
          volumeInfo: VolumeInfo(
              title: '5',
              authors: ['ddd'],
              pageCount: 200,
              averageRating: 20,
              ratingsCount: 20,
              imageLinks: ImageLinks(
                  thumbnail: ''
              )
          ),
        ),
      ),
      separatorBuilder: (context, index) {
        return const Divider(
          height: 15,
        );
      },
      itemCount: 20,
    );
  }
}