

import 'package:flutter/material.dart';

import '../device_screen_type.dart';

/// This class use to display the background color of the screen
class AppBackground extends StatefulWidget {
  const AppBackground({
    Key? key,
    required this.mobile,
    this.safeArea=true,
    this.tablet,
    this.padding,
    this.chekNetwork = true
  }) : super(key: key);
  final Widget mobile;
  final Widget? tablet;
  final EdgeInsets? padding;
  final bool chekNetwork;
  final bool safeArea;

  @override
  _AppBackgroundState createState() => _AppBackgroundState();
}

class _AppBackgroundState extends State<AppBackground> {
  @override
  Widget build(BuildContext context) {
    if (!widget.chekNetwork) {
      return _buildSafeArea();
    }
    return _buildSafeArea();
  }

  Widget _buildSafeArea(){
    if(widget.safeArea){
      return SafeArea(child: buildBody());
    }
    return  buildBody();
  }

  Widget buildBody() {
    final DeviceScreenType deviceType = getDeviceType();
    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(14.0),
      child: deviceType == DeviceScreenType.Mobile? widget.mobile : widget.tablet?? widget.mobile,
    );
  }

}

