import 'package:books/Core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key, required this.price,
  });

  final String price;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 35),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              text: '$price \$',
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15)
            ),
            ),
          ),
          const Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffEF8262),
              text: 'Free Preview',
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
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

