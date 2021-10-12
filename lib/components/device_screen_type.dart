import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum DeviceScreenType {
  Mobile,
  Tablet,
}

DeviceScreenType getDeviceType() {
  final Orientation orientation = ScreenUtil().orientation;
  double deviceWidth = 0;

  if (orientation == Orientation.landscape) {
    deviceWidth = ScreenUtil().screenHeight;
  } else {
    deviceWidth = ScreenUtil().screenWidth;
  }

  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}
