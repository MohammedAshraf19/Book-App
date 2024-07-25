import 'package:flutter/material.dart';

import '../../../../Core/widgets/custom_loading.dart';



class SimilarBooksLoading extends StatelessWidget {
  const SimilarBooksLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 4.6,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 15),
          child: CustomLoadingItem(
              width: MediaQuery.sizeOf(context).width / 3.5, height: MediaQuery.sizeOf(context).height / 4.6),
        ),
        itemCount: 10,
      ),
    );
  }
}
