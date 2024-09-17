
import 'package:books/Core/utils/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../Core/utils/assets.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,right: 20,left: 10),
      child: Row(
        children: [
          Image.asset(
              Assets.logo,height: MediaQuery.sizeOf(context).height / 40
          ),
          const Spacer(),
          IconButton(
            onPressed: (){
              GoRouter.of(context).push(AppRouters.profileView);
            },
            icon: const Icon(
              FontAwesomeIcons.userTie,
              size: 24,
            ),
          ),
          IconButton(
            onPressed: (){
              GoRouter.of(context).push(AppRouters.searchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
