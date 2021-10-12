import 'package:flutter/material.dart';
import '../current_theme.dart';

class AlertButton extends StatelessWidget {
  const AlertButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData.light(),
        child: TextButton(
          child: Text(text),
          onPressed: onPressed,
          style: TextButton.styleFrom(primary: CurrentTheme.primaryColor,textStyle: CurrentTheme.subtitle2),
        ));
  }
}
