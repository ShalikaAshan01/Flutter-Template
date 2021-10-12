import 'package:flutter/material.dart';
//TODO: add your logo and app name
const kAppName = "Flutter Template";
class AppLogo extends StatelessWidget {
  final double size;

  const AppLogo({Key? key, this.size=100}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(),
    );
  }
}

class AppName extends StatelessWidget {
  final TextStyle? textStyle;
  const AppName({Key? key, this.textStyle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(kAppName,style: textStyle??TextStyle(),),
    );
  }
}
