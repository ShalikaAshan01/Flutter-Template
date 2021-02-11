import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextTheme{
  static TextStyle headline1;
  static TextStyle headline2;
  static TextStyle headline3;
  static TextStyle headline4;
  static TextStyle headline5;
  static TextStyle headline6;
  static TextStyle bodyText1;
  static TextStyle bodyText2;
  static TextStyle button;
  static TextStyle caption;
  static TextStyle overline;
  static TextStyle subtitle1;
  static TextStyle subtitle2;
  void init(BuildContext context){
    final textTheme = Theme.of(context).textTheme;
    headline1 = textTheme.headline1;
    headline2 = textTheme.headline2;
    headline3 = textTheme.headline3;
    headline4 = textTheme.headline4;
    headline5 = textTheme.headline5;
    headline6 = textTheme.headline6;
    bodyText1 = textTheme.bodyText1;
    bodyText2 = textTheme.bodyText2;
    button = textTheme.button;
    caption = textTheme.caption;
    overline = textTheme.overline;
    subtitle1 = textTheme.subtitle1;
    subtitle2 = textTheme.subtitle2;
  }
}
