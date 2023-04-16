import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.widget, this.func});
  final Widget? widget;
  final VoidCallback? func;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: func,
      icon: widget!,
      splashRadius: 20,
    );
  }
}
