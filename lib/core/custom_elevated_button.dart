import 'package:flutter/material.dart';
import 'package:task4/core/color_managers.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key, required this.text, required this.onPressed,
  });

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManagers.primaryColor,
        minimumSize: Size(double.infinity, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(24)
        ),
      ),
      onPressed: onPressed, 
      child: Text(text, 
      style: TextStyle(
        fontSize: 32, 
        color: Colors.white,
        fontWeight: FontWeight.w600
        ),));
  }
}


