import 'package:flutter/material.dart';
//TODO: add your logo and app name
const String kAppName = 'Flutter Template';
class AppLogo extends StatelessWidget {
  const AppLogo({Key? key, this.size=100}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return const FlutterLogo();
  }
}

class AppName extends StatelessWidget {
  const AppName({Key? key, this.textStyle}) : super(key: key);
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Text(kAppName,style: textStyle??const TextStyle(),);
  }
}
