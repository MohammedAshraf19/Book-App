import 'package:books/Features/home/presentation/widgets/best_seller_lisView_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 20),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const BestSellerListViewItem(),
        separatorBuilder: (context, index) {
          return const Divider(
            height: 15,
          );
        },
        itemCount: 20,
      ),
    );
  }
}
