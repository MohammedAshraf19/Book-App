import 'package:books/Core/utils/app_routers.dart';
import 'package:books/Core/utils/styles.dart';
import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:books/Features/home/presentation/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.book,

  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(
            AppRouters.bookDetailsView,
            extra: book
        );
      },
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height / 5.5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: AspectRatio(
                aspectRatio:  2.6 / 4,
                child: CachedNetworkImage(
                  imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
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
                        book.volumeInfo!.title!,
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
                        book.volumeInfo!.authors!.isNotEmpty ? book.volumeInfo!.authors![0].toString() : 'Un Known',
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
                          "${book.volumeInfo?.pageCount} \$",
                          style: Styles.testStyle20,
                        ),
                        const Spacer(),
                        BookRating(
                          bookRate: book.volumeInfo!.averageRating,
                          bookRateNumber: book.volumeInfo!.ratingsCount,
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
