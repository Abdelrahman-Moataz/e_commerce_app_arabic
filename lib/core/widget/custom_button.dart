import 'package:e_commerce_app_arabic/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key, this.text, this.tap}) : super(key: key);
  final String? text;
  final void Function()? tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: kMainColor,
          borderRadius: BorderRadius.circular(8),

        ),
        child: Center(
          child:   Text(text!,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xffffffff),
            fontWeight: FontWeight.w500,
          ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}



class LoginButton extends StatelessWidget {
  const LoginButton({Key? key,  required this.SIcon, required this.name, required this.couler, required this.onTap}) : super(key: key);

  final IconData SIcon;
  final  String    name;
  final Color     couler;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
           //height: 25.0,
          decoration:  BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8.0))
          ),

            child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaIcon(SIcon,color: couler,),
              Text(name),

            ],
          )
        ),
      ),
    );
  }
}

