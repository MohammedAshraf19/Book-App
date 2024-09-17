import 'package:flutter/material.dart';
import '../../../../Core/utils/styles.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
      child:  Column(

        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            name,
            style: Styles.testStyle20,
          ),
        ],
      ),
    );
  }
}
