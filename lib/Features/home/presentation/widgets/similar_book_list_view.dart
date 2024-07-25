import 'package:books/Core/widgets/custom_error.dart';
import 'package:books/Features/home/presentation/view_models/similar_books/similar_book_cubit.dart';
import 'package:books/Features/home/presentation/widgets/book_image.dart';
import 'package:books/Features/home/presentation/widgets/similar_books_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../Core/utils/app_routers.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is GetSimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .sizeOf(context)
                .height / 6,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return  InkWell(
                  onTap: (){
                    GoRouter.of(context).push(
                        AppRouters.bookDetailsView,
                        extra: state.books[index]
                    );
                  },
                  child: BookImage(
                    image: state.books[index].volumeInfo!.imageLinks!.thumbnail,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 8,
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
            )
        );
        }
        else if (state is GetSimilarBooksError){
          return CustomError(error: state.error);
        }
        else
          {
            return const SimilarBooksLoading();
          }
      },
    );
  }
}