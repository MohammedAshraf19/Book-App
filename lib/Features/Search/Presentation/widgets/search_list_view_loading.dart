import 'package:flutter/material.dart';

import '../../../../Core/widgets/custom_loading.dart';


class SearchListViewLoading extends StatelessWidget {
  const SearchListViewLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(
            children: [
              CustomLoadingItem(width: MediaQuery.sizeOf(context).width / 3.1, height: MediaQuery.sizeOf(context).height / 4.5),
              const SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomLoadingItem(width: MediaQuery.sizeOf(context).width / 2.9, height: MediaQuery.sizeOf(context).height / 25),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomLoadingItem(width: MediaQuery.sizeOf(context).width / 3.4, height: MediaQuery.sizeOf(context).height / 25),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomLoadingItem(width: MediaQuery.sizeOf(context).width / 3.4, height: MediaQuery.sizeOf(context).height / 25),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
