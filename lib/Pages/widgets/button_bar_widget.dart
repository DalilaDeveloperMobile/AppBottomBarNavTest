import 'package:flutter/material.dart';

class ButtonBarWidget extends StatelessWidget {
  const ButtonBarWidget({
    Key? key,

    required this.text,
    required this.icon, 
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {

  final mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;

    final width = MediaQuery.of(context).size.width; 

    return TextButton(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Color(0xFF033757),
            size: isLandscape 
            ? width * 0.042
            : width * 0.072,//27,
          ),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFF033757),
              fontSize: isLandscape 
            ? width * 0.026
            : width * 0.036,
            ),
          ),
        ],
      ),
    );
  }
}