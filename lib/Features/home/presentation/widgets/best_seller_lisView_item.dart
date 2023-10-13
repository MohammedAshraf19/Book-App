import 'package:books/Core/utils/app_routers.dart';
import 'package:books/Core/utils/assets.dart';
import 'package:books/Core/utils/styles.dart';
import 'package:books/Features/home/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(
          AppRouters.bookDetailsView
        );
      },
      child: SizedBox(
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     SizedBox(
                       width: MediaQuery.sizeOf(context).width * .5,
                      child:  const Text(
                        "The Jungle Book",
                        style: Styles.testStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                     const Opacity(
                       opacity: 0.7,
                       child: Text(
                         "Rudgerd Kipling",
                         style: Styles.testStyle14,
                    ),
                     ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Row(
                      children: [
                        Text(
                          "19.9 \$",
                          style: Styles.testStyle20,
                        ),
                        Spacer(),
                        BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

