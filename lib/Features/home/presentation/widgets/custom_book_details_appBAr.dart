
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../Core/utils/app_routers.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: ()
            {
              GoRouter.of(context).push(
                AppRouters.homeView,
              );
            },
            icon: const Icon(Icons.close)
        ),
        const Icon(
          Icons.shopping_cart_outlined,
        ),
      ],
    );
  }
}

