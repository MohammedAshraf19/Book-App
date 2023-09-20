import 'package:books/Core/utils/assets.dart';
import 'package:books/Core/utils/styles.dart';
import 'package:books/Features/home/presentation/widgets/book_list_view.dart';
import 'package:books/Features/home/presentation/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const BookListView(),
          const Text(
            "Best Seller",
            style: Styles.mediumHead,
          ),

          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 5.7,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 2.4 / 4,
                  child: Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage(Assets.test),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 20,top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "The Jungle Book",
                        style: Styles.mediumHead,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Rudgerd Kipling",
                        style: Styles.smallText,
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      Row(
                        children: [
                          const Text(
                            "19.9 \$",
                            style: Styles.mediumHead,
                          ),

                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 8,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            "4.8",
                            style: Styles.mediumHead.copyWith(fontSize: 15),
                          ),
                          const Text(
                            "(2852)",
                            style: Styles.smallText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

