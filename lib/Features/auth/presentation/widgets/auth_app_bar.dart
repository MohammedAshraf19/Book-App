import 'package:flutter/material.dart';

import '../../../../Core/utils/assets.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Image(
          image: AssetImage(
            Assets.logo,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
