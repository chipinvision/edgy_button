library edgy_button;

import 'package:flutter/material.dart';

class EdgyButton extends StatefulWidget {

  final double buttonHeight;
  final double buttonWidth;
  final String label;
  final TextStyle? labelStyle;
  final Color buttonColor;
  final Border? border;
  final VoidCallback? onPressed;

  const EdgyButton({Key? key, required this.buttonHeight, required this.buttonWidth, required this.label, this.labelStyle, required this.buttonColor, required this.onPressed, this.border}) : super(key: key);

  @override
  State<EdgyButton> createState() => _EdgyButtonState();
}

class _EdgyButtonState extends State<EdgyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: widget.buttonHeight,
        width: widget.buttonWidth,
        decoration: BoxDecoration(
          color: widget.buttonColor,
          border: widget.border,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            widget.label,
            style: widget.labelStyle,
          ),
        ),
      ),
    );
  }
}
