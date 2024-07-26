import 'package:books/Features/home/presentation/view_models/Feature_Book_Cubit/feature_book_cubit.dart';
import 'package:books/Features/home/presentation/view_models/New_Books_Cubit/new_books_cubit.dart';
import 'package:books/Features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    RefreshController _refreshController =
    RefreshController(initialRefresh: false);
    return  Scaffold(
      body: SmartRefresher(
        controller: _refreshController,
          onRefresh: () async
          {
            FeatureBookCubit.get(context).getFeatureBook();
            NewBooksCubit.get(context).getBestSellerBook();
            await Future.delayed(const Duration(milliseconds: 1000));
            _refreshController.refreshCompleted();
          },
          child: const HomeViewBody()
      ),
    );
  }
}
