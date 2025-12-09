import 'package:flutter/material.dart';
import 'package:flutter_ruler_slider/flutter_ruler_slider.dart';
import 'package:task4/core/color_managers.dart';
import 'package:task4/core/style_manager.dart';

class SetHeightWidget extends StatelessWidget {
  const SetHeightWidget({
    super.key, required this.height, required this.onChanged, 
  });

  final double height;
  final Function(double value) onChanged;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        color: ColorManagers.secondryColor.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        
        children: [
          Text("Height (cm)", style: StyleManager.font16Grey,),
          Text(height.toInt().toString(), style: StyleManager.font32pink,),


          FlutterRulerSlider(
            tickStyle: TicksStyle(
              majorHeight: 40,
            ),
            
            height: 60,
            initialValue: height.toInt(),
            width: 300,
            minValue: 100,
            maxValue: 200,
            onValueChanged: onChanged,
          ),
        ],
      ),
    );
  }
}





