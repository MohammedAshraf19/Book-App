import 'package:books/Core/widgets/custom_error.dart';
import 'package:books/Features/Search/Presentation/view_model/search_cubit/search_cubit.dart';
import 'package:books/Features/Search/Presentation/widgets/search_list_view_loading.dart';
import 'package:books/Features/home/presentation/widgets/best_seller_lisView_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (BuildContext context, state){
        if( state is SearchLoading) {
          return const SearchListViewLoading();
        }
        else if (state is SearchError)
        {
            return CustomError(error: state.error);
        }
        else if (state is SearchSuccess)
        {
          return ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 20),
            itemBuilder: (context, index) =>  BestSellerListViewItem(
              book: state.books[index],
            ),
            separatorBuilder: (context, index) {
              return const Divider(
                height: 15,
              );
            },
            itemCount: state.books.length,
          );
        }
        else{
          return Container();
        }
      },
    );
  }
}