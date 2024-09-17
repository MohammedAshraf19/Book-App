import 'package:books/Core/utils/app_routers.dart';
import 'package:books/Core/utils/cache_helper.dart';
import 'package:books/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../Core/utils/styles.dart';
import '../../../../Core/widgets/custom_elevated_button.dart';
import 'card_element.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height / 3.5,
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          color: Colors.grey.withOpacity(0.2),
          child:   Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: Column(
              children: [
                const CardElement(
                    icon: Icons.email, name: 'Email',
                    value: 'mohamedashraf55@gmail.com'
                ),
                SizedBox(
                  height:  MediaQuery.of(context).size.height / 30,
                ),
                const CardElement(
                    icon: Icons.phone, name: 'Phone',
                    value: '01128024680'
                ),
                const Spacer(),
                CustomElevatedButton(
                  onPressed: (){
                    CacheHelper().removeData(key: uid);
                    GoRouter.of(context).pushReplacement(AppRouters.loginView);
                  },
                  color: Colors.deepPurple,
                  child: Text(
                    'Log Out',
                    style: Styles.testStyle20.copyWith(
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
