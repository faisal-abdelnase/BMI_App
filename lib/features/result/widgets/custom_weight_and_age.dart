import 'package:flutter/material.dart';
import 'package:task4/core/color_managers.dart';
import 'package:task4/core/style_manager.dart';

class CustomWeightAndAge extends StatelessWidget {
  const CustomWeightAndAge({
    super.key, required this.text, required this.value, required this.onPressedAdd, required this.onPressedRemove,
  });

  final String text;
  final int value;
  final Function() onPressedAdd;
  final Function() onPressedRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        color: ColorManagers.secondryColor.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(text, style: StyleManager.font16Grey,),
          Text(value.toString(), style: StyleManager.font32pink,),
    
          Row(
            children: [
    
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder()
                ),
                onPressed: onPressedRemove, 
                child: Icon(
                  Icons.remove, 
                  color: ColorManagers.secondryColor, 
                  fontWeight: FontWeight.bold, size: 30,)),
    
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder()
                ),
                onPressed: onPressedAdd, 
                child: Icon(
                  Icons.add, 
                  color: ColorManagers.secondryColor, 
                  fontWeight: FontWeight.bold, size: 30,)),
            ],
          ),
        ],
      ),
    );
  }
}