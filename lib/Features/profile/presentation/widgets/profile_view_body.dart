import 'package:books/Features/profile/presentation/widgets/card_view.dart';
import 'package:books/Features/profile/presentation/widgets/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
              onPressed: (){
                GoRouter.of(context).pop();
              },
              icon: Icon(
                  Icons.arrow_back_ios
              ),
          ),
        ),
        const ProfileImage(),
        const Spacer(),
        const CardView(),
      ],
    );
  }
}
