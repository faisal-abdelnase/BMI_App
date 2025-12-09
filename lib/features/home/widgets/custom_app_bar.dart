import 'package:flutter/material.dart';
import 'package:task4/core/style_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "BMI ",
        style: StyleManager.font32Orange,
        children: [
          TextSpan(text: "Calculator", style: StyleManager.font32Greeen,),
        ],
      ),
      );
  }
}