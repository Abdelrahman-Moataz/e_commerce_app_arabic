import 'package:flutter/material.dart';

import 'custom_text_felid.dart';


class CompCustomTextForm extends StatelessWidget {
  const CompCustomTextForm({Key? key, this.header, this.inputType, this.maxLine}) : super(key: key);

  final String? header;
  final TextInputType? inputType;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Align(alignment: Alignment.topLeft,child: Text(header!)),

        const SizedBox(height: 8,),


        CustomTextFiled(
          maxLine: maxLine,
          inputType: inputType,
        )

      ],
    );
  }
}
