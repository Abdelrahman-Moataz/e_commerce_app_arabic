import 'package:e_commerce_app_arabic/features/on_boarding/presentation/widget/page_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({Key? key}) : super(key: key);

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  @override
  Widget build(BuildContext context) {
    return
      PageView(

      children:  [

        Container(
          height: 100,
          width: 100,
          color: Colors.yellow,
          child: const Text('one'),
        ),

        Container(
          height: 100,
          width: 100,
          color: Colors.cyan,
          child: const Text('two'),
        ),

        Container(
          height: 100,
          width: 100,
          color: Colors.purple,
          child: const Text('three'),
        ),

        // PageViewItem(
        //   image: 'assets/OnBoarding1.png',
        //   title: 'E Shopping',
        //   subtitle: 'Explore top organic fruit & grab them1',
        // ),
        //
        // PageViewItem(
        //   image: 'assets/OnBoarding2.png',
        //   title: 'E Shopping',
        //   subtitle: 'Explore top organic fruit & grab them2',
        // ),
        //
        // PageViewItem(
        //   image: 'assets/OnBoarding3.png',
        //   title: 'E Shopping',
        //   subtitle: 'Explore top organic fruit & grab them3',
        // ),
      ],
    );
  }
}
