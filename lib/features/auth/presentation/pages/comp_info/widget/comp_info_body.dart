import 'package:flutter/material.dart';

import '../../../../../../core/widget/comp_custom_text_field.dart';
import '../../../../../../core/widget/custom_button.dart';


class CompInfoBody extends StatelessWidget {
  const CompInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: const[
          SizedBox(height: 30,),
          CompCustomTextForm(
            header: 'Enter your name',
          ),


          SizedBox(height: 2,),
          CompCustomTextForm(
            header: 'Enter your mobile number',
          ),
          SizedBox(height: 2,),


          CompCustomTextForm(
            header: 'Enter your address',
            maxLine: 5,
          ),
          Expanded(child: SizedBox()),

          CustomGeneralButton(text: 'Log in',),


          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
