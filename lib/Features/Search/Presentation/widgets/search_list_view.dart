import 'package:books/Features/home/presentation/widgets/best_seller_lisView_item.dart';
import 'package:flutter/material.dart';

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
      itemBuilder: (context, index) => const BestSellerListViewItem(),
      separatorBuilder: (context, index) {
        return const Divider(
          height: 15,
        );
      },
      itemCount: 20,
    );
  }
}