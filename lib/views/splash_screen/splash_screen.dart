import 'package:flutter/material.dart';
import 'package:flutter_template/components/widgets/app_background.dart';
import 'package:flutter_template/components/widgets/app_brand.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBackground(
        mobile: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          Spacer(),
          Center(child: AppLogo()),
          Spacer(),
          CircularProgressIndicator(),
          Spacer(),
        ],
      ),
    ));
  }
}
