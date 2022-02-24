import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RoundedButton({
    required this.buttonTitle,
    required this.color,
    required this.onPressed,
    required this.ownStyle,
    required this.minWidth,
  });

  final Color color;
  final String buttonTitle;
  final VoidCallback onPressed;
  final TextStyle ownStyle;
  final double minWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Colors.black, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(30.0)),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: minWidth,
          height: 42.0,
          child: Text(
            buttonTitle,
            style: ownStyle,
          ),
        ),
      ),
    );
  }
}
