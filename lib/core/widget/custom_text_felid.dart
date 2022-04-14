import 'package:flutter/material.dart';


class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({Key? key, this.inputType, this.suffexIcon, this.onChange, this.maxLine, this.onSaved}) : super(key: key);

  final TextInputType? inputType;
  final Widget? suffexIcon;
  final ValueSetter? onChange;
  final ValueSetter? onSaved;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: onChange,
      onSaved: onSaved,
      maxLines: maxLine,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xffcccccc)),
        )
      ),
    );
  }
}
