
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrentTheme{
  static late  ThemeData themeData;
  static late  Color primaryLightColor;
  static late  Color primaryDarkColor;
  static Color primaryColor = const Color(0xFFC80202);
  static Color backgroundColor = const Color(0xFFFFFFFF);
  static Color accentColor = const Color(0xFF282828);
  static Color darkGreyColor = const Color(0xFF525F67);
  static Color lightGreyColor = const Color(0xFFC4C4C4);
  static Color blackColor = const Color(0xFF000000);
  static Color darkYellow = const Color(0xFFF2994A);
  static Color whiteColor = const Color(0xFFFFFFFF);
  static TextStyle? headline1;
  static TextStyle? headline2;
  static TextStyle? headline3;
  static TextStyle? headline4;
  static TextStyle? headline5;
  static TextStyle? headline6;
  static TextStyle? bodyText1;
  static TextStyle? bodyText2;
  static TextStyle? button;
  static TextStyle? caption;
  static TextStyle? overline;
  static TextStyle? subtitle1;
  static TextStyle? subtitle2;
  void init(BuildContext context){
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    themeData = theme;
    primaryLightColor = theme.primaryColorLight;
    primaryDarkColor = theme.primaryColorDark;
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
