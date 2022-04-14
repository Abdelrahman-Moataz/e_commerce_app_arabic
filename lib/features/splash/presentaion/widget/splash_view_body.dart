import 'package:e_commerce_app_arabic/core/utils/size_config.dart';
import 'package:e_commerce_app_arabic/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{

  AnimationController? animationController;
  Animation? fadingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration:  const Duration(milliseconds: 800));
    fadingAnimation = Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextPage();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children:  [
        const Spacer(),
        AnimatedBuilder(
          animation: fadingAnimation!,
          builder: (context,_) => Opacity(opacity: fadingAnimation?.value,
            child: const Text('Fruit Market',style: TextStyle(
              fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 51,
              color: Color(0XFFffffff)
            ),),
          ),
        ),
        //Spacer(),
        Image.asset('assets/Daco.png')
      ],
    );
  }


}

void goToNextPage() {
  Future.delayed(const Duration(seconds: 3), ()
  {
    Get.to(()=> const OnBoardingView(), transition: Transition.fade);
   }
  );
}