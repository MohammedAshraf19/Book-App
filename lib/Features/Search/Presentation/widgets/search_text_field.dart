import 'package:books/Features/Search/Presentation/view_model/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value){
        SearchCubit.get(context).search(value);
      },
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
              color: Colors.white
          ),
        ),
      ),
    );
  }
}