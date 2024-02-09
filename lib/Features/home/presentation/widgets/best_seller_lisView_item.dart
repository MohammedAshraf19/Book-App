import 'package:books/Core/utils/app_routers.dart';
import 'package:books/Core/utils/assets.dart';
import 'package:books/Core/utils/styles.dart';
import 'package:books/Features/home/presentation/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key, required this.bookTitle, required this.bookImage, required this.bookAuthor, required this.bookPrice, this.bookRate, this.bookRateNumber,
  });

  final dynamic bookTitle;
  final dynamic bookImage;
  final dynamic bookAuthor;
  final dynamic bookPrice;
  final dynamic bookRate;
  final dynamic bookRateNumber;

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
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: AspectRatio(
                aspectRatio:  2.6 / 4,
                child: CachedNetworkImage(
                  imageUrl: bookImage,
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
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
                      child:   Text(
                        bookTitle,
                        style: Styles.testStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                      Opacity(
                       opacity: 0.7,
                       child: Text(
                         bookAuthor,
                         style: Styles.testStyle14,
                         maxLines: 1,
                         overflow: TextOverflow.ellipsis,
                    ),
                     ),
                    const SizedBox(
                      height: 3,
                    ),
                     Row(
                      children: [
                        Text(
                          "${bookPrice} \$",
                          style: Styles.testStyle20,
                        ),
                        const Spacer(),
                         BookRating(
                          bookRate: bookRate,
                          bookRateNumber: bookRateNumber,
                        ),
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

