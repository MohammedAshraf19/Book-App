import 'package:flutter/material.dart';

import '../../../../Core/utils/assets.dart';

class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height / 3.5,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio:  2.4 / 4,
              child: Container(
                alignment: Alignment.bottomRight,
                width: MediaQuery.sizeOf(context).width / 2.5,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage(Assets.test),
                      fit: BoxFit.fill
                  ),
                ),
                child: const Icon(
                  Icons.slow_motion_video_sharp,
                  size: 55,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 20,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 20,
        ),
      ),
    );
  }
}
