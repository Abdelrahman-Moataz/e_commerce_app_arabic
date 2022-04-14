import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../../../core/widget/custom_button.dart';
import '../../comp_info/comp-info.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  _LoginViewBodyState createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  @override
  Widget build(BuildContext context) {
    return
      Column( mainAxisAlignment: MainAxisAlignment.center,

      children:  [
        const Expanded(child: SizedBox()),

        Flexible(flex: 2,child: Image.asset('assets/log.png'),),


        const Expanded(child: SizedBox()),

        const Text('Fruit Market',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
        ),

        const Expanded(child: SizedBox()),

        Row(
          children:  [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: LoginButton(
                  SIcon: FontAwesomeIcons.googlePlus,
                  name: 'Login with', couler: Colors.redAccent,
                  onTap: () {
                    Get.to(()=>const CompInfo(),transition: Transition.rightToLeft);
                  },

                ),
              ),
            ),

            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: LoginButton(
                  SIcon: FontAwesomeIcons.facebookF,
                  name: 'Login with', couler: Colors.blueAccent,
                  onTap: () {
                    Get.to(()=>const CompInfo(),transition: Transition.rightToLeft);
                  },

                ),
              ),
            )

          ],
        ),
        const Expanded(child: SizedBox()),

      ],
    );
  }
}
