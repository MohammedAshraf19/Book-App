import 'package:flutter/material.dart';

import '../../../../Core/utils/assets.dart';
import '../../../../Core/utils/styles.dart';
import '../../../../Core/widgets/custom_elevated_button.dart';

class OtherLogin extends StatelessWidget {
  const OtherLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Center(
          child: Text(
            'OR',
            style: Styles.testStyle20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomElevatedButton(
          color: Colors.white.withOpacity(0.8),
          onPressed: (){
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: const AssetImage(Assets.facebook),
                height: MediaQuery.of(context).size.height / 10,
              ),
              Text(
                'Continue With Facebook',
                style: Styles.testStyle16.copyWith(
                    color: Colors.black
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevatedButton(
            color: Colors.white.withOpacity(0.8),
            onPressed: (){
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: const AssetImage(Assets.google),
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Text(
                  'Continue With Google',
                  style: Styles.testStyle16.copyWith(
                      color: Colors.black
                  ),
                )
              ],
            )
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevatedButton(
            color: Colors.white.withOpacity(0.8),
            onPressed: (){
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: const AssetImage(Assets.apple),
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Text(
                  'Continue With Apple',
                  style: Styles.testStyle16.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            )
        ),

      ],
    );
  }
}
