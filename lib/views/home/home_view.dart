import 'package:flutter/material.dart';
import 'package:flutter_template/components/widgets/app_background.dart';
import 'package:flutter_template/components/widgets/app_brand.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  static const String routeName = 'home_view';
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
