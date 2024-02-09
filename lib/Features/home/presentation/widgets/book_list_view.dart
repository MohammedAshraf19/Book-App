import 'package:books/Core/widgets/custom_error.dart';
import 'package:books/Core/widgets/custom_loading.dart';
import 'package:books/Features/home/data/repos/home_repo_impl.dart';
import 'package:books/Features/home/presentation/view_models/Feature_Book_Cubit/feature_book_cubit.dart';
import 'package:books/Features/home/presentation/widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit, FeatureBookState>(
      builder: (context, state) {
        if (state is FeatureBookSuccess) {
          return Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 5),
          child: SizedBox(
            height: MediaQuery
                .sizeOf(context)
                .height / 3.5,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return  BookImage(image: state.books[index].volumeInfo!.imageLinks!.thumbnail,);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 8,
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
            ),
          ),
        );
        }
        else if(state is FeatureBookError){
          return CustomError(error: state.error);
        }
        else{
          return const CustomLoading();
        }
      },
    );
  }
}

