import 'package:books/Features/Search/Presentation/widgets/search_list_view.dart';
import 'package:books/Features/Search/Presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Column(
           children: [
             SearchTextField(),
             SearchListView()
           ],
        ),
      ),
    );
  }
}




