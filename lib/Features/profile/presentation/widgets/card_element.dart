import 'package:flutter/material.dart';

import '../../../../Core/utils/styles.dart';

class CardElement extends StatelessWidget {
  const CardElement({super.key, required this.icon, required this.name, required this.value});
  final IconData icon;
  final String name;
  final String value;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
         Icon(
          icon,
          size: 30,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          name,
          style: Styles.testStyle16.copyWith(
              fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.6,
          child: Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.testStyle16.copyWith(
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
}
