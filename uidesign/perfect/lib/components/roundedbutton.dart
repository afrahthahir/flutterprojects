import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RoundedButton({
    required this.buttonTitle,
    required this.color,
    required this.onPressed,
    // required this.width,
    required this.mystyle,
  });

  final Color color;
  final String buttonTitle;
  final VoidCallback onPressed;
  //final double width;
  final TextStyle mystyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(
              color: Color.fromARGB(255, 44, 86, 230),
            )),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 100,
          height: 42.0,
          child: Text(
            buttonTitle,
            style: mystyle,
          ),
        ),
      ),
    );
  }
}
