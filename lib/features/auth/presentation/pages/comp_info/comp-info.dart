import 'package:e_commerce_app_arabic/features/auth/presentation/pages/comp_info/widget/comp_info_body.dart';
import 'package:flutter/material.dart';


class CompInfo extends StatelessWidget {
  const CompInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CompInfoBody(),
    );
  }
}
