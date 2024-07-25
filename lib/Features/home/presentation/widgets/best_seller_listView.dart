import 'package:books/Core/widgets/custom_error.dart';
import 'package:books/Core/widgets/custom_loading.dart';
import 'package:books/Features/home/presentation/view_models/New_Books_Cubit/new_books_cubit.dart';
import 'package:books/Features/home/presentation/widgets/best_seller_lisView_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewBooksCubit, NewBooksState>(
      builder: (context, state) {
        if (state is NewBooksSuccess) {
          return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 20),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>  BestSellerListViewItem(
              book: state.books[index],
            ),
            separatorBuilder: (context, index) {
              return const Divider(
                height: 15,
              );
            },
            itemCount: state.books.length ,
          ),
        );
        }
        else if (state is NewBooksError)
        {
          return CustomError(error: state.error);
        }
        else{
          return Padding(
            padding:  EdgeInsets.only(top: MediaQuery.sizeOf(context).height / 3),
            child: const Center(child: CustomLoading()),
          );
        }
      },
    );
  }
}
