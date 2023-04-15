import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.widget, this.func});
  final Widget? widget;
  final Function? func;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => func,
      icon: widget!,
      splashRadius: 20,
    );
  }
}
