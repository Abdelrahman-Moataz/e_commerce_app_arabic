import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subtitle, this.image}) : super(key: key);

  final String? title;
  final String? subtitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image!,),

         Text(title!,style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff2f2e41)

        ),
          textAlign: TextAlign.left,
        ),

         Text(subtitle!,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xff78787c)

        ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
