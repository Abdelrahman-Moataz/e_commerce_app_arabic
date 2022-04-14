import 'package:e_commerce_app_arabic/core/utils/size_config.dart';
import 'package:e_commerce_app_arabic/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../auth/presentation/pages/login/login_view.dart';
import 'custom_page_view.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        const CustomPageView(),

        Positioned(top: SizeConfig.defaultSize! * 4,
          right: 32,
          child: const Text('Skip',style: TextStyle(
            fontSize: 14,
            color: Color(0xff898989)
          ),
            textAlign: TextAlign.left,
          ),
        ),
         Positioned(
           left: SizeConfig.defaultSize! * 5,
             right: SizeConfig.defaultSize! * 5,
             bottom: SizeConfig.defaultSize! * 4,
             child:  CustomGeneralButton(
               text: 'Next',
               tap: (){
                 Get.to(const LoginView(),transition: Transition.rightToLeft);
               },
             )
         ),

      ],
    );
  }
}
