import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/components/app_brand.dart';
import 'package:flutter_template/components/app_text_theme.dart';
import 'package:flutter_template/components/components.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'components/size_config.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      theme: ThemeData(
        textTheme: TextTheme(

        )
      ),
      home: Root(),
      builder: (context, widget) {
        return DevicePreview.appBuilder(context, ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
        ResponsiveBreakpoint.resize(450, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.autoScale(1000, name: TABLET),
        ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
        background: Container(color: Color(0xFFF5F5F5)),));},
    );
  }
}
class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    AppTextTheme().init(context);
    return Container();
  }
}
