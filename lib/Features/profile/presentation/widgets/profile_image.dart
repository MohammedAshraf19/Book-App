import 'package:flutter/material.dart';
import '../../../../Core/utils/styles.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
      child: const Column(

        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 60,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            'Mohammed Ashraf Mohammed',
            style: Styles.testStyle20,
          ),
        ],
      ),
    );
  }
}
