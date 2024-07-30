import 'package:books/Core/functions/custom_snack_bar.dart';
import 'package:books/Core/widgets/custom_button.dart';
import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key, required this.bookModel,
  });

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 35),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              text: 'FREE',
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15)
            ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async{
                final Uri url = Uri.parse(bookModel.volumeInfo!.previewLink!??'');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
                else{
                  customSnackBarError(context: context, message: 'Can not open $url');
                }
              },
              backgroundColor: const Color(0xffEF8262),
              text: 'Preview',
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15)
              ),
            ),
          ),
        ],
      ),
    );
  }

}

