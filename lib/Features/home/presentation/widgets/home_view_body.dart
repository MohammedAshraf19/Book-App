import 'package:books/Core/utils/styles.dart';
import 'package:books/Features/home/presentation/widgets/best_seller_listView.dart';
import 'package:books/Features/home/presentation/widgets/book_list_view.dart';
import 'package:books/Features/home/presentation/widgets/custom_home_appBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHomeAppBar(),
          BookListView(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Best Seller",
              style: Styles.testStyle18,
            ),
          ),
          BestSellerListView(),
        ],
      ),
    );
  }
}



