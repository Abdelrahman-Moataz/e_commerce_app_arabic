import 'package:e_commerce_app_arabic/features/auth/presentation/pages/login/widget/login_view_body.dart';
import 'package:flutter/material.dart';


class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
        body: LoginViewBody()
    );
  }
}
