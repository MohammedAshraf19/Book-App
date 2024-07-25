import 'package:books/Core/widgets/custom_error.dart';
import 'package:books/Core/widgets/custom_loading.dart';
import 'package:books/Features/home/presentation/view_models/similar_books/similar_book_cubit.dart';
import 'package:books/Features/home/presentation/widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatefulWidget {
  const SimilarBookListView({
    super.key,
    required this.category
  });

  final String category;

  @override
  State<SimilarBookListView> createState() => _SimilarBookListViewState();
}

class _SimilarBookListViewState extends State<SimilarBookListView> {
  @override
  void initState() {
    // TODO: implement initState
    SimilarBooksCubit.get(context).getSimilarBook(category: widget.category);
    super.initState();
  }
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
                return  BookImage(
                  image: state.books[index].volumeInfo!.imageLinks!.thumbnail,
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
            return const CustomLoading();
          }
      },
    );
  }
}