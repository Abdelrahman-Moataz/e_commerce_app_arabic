import 'package:e_commerce_app_arabic/features/on_boarding/presentation/widget/on_boarding_body.dart';
import 'package:flutter/material.dart';


class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
