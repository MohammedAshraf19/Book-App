import 'package:flutter/material.dart';
import '../../../../Core/widgets/custom_loading.dart';

class ProfileViewLoading extends StatelessWidget {
  const ProfileViewLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
          child:  Column(

            children: [
              const CustomLoadingItem(width: 100, height: 110),
              const SizedBox(
                height: 10,
              ),
              CustomLoadingItem(width: MediaQuery.of(context).size.width / 2, height: 30),
            ],
          ),
        ),
        const Spacer(),
        SizedBox(
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
                    CustomLoadingItem(width: MediaQuery.of(context).size.width, height: 30),
                    SizedBox(
                      height:  MediaQuery.of(context).size.height / 30,
                    ),
                    CustomLoadingItem(width: MediaQuery.of(context).size.width, height: 30),
                    const Spacer(),
                    CustomLoadingItem(width: MediaQuery.of(context).size.width, height: 50),
                  ],
                ),
              )
          ),
        ),

      ],
    );
  }
}
