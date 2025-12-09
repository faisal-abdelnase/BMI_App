import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task4/core/color_managers.dart';
import 'package:task4/core/custom_elevated_button.dart';
import 'package:task4/core/style_manager.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    super.key, required this.result,
  });

  final Map<String, dynamic> result;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Dialog(
        backgroundColor: Color(0xffF0F8EC),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
              width: double.infinity,
              height: 400,
            child: Column(
              children: [
                Text("Your BMI:", style: StyleManager.font16Black,),
                Text(result["bmi"], style: StyleManager.font64Greeen,),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: ColorManagers.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(result["category"], style: TextStyle(color: Colors.white),),
                ),
                
                Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("${result["weight"]} kg", style: StyleManager.font20Greeen,),
                        Text("weight", style: StyleManager.font16Grey,)
                      ],
                    ),
                
                    Column(
                      children: [
                        Text("${result["height"]} cm", style: StyleManager.font20Greeen,),
                        Text("height", style: StyleManager.font16Grey,)
                      ],
                    ),
                
                    Column(
                      children: [
                        Text(result["age"].toString(), style: StyleManager.font20Greeen,),
                        Text("Age", style: StyleManager.font16Grey,)
                      ],
                    ),
                
                    Column(
                      children: [
                        Text(result["gender"], style: StyleManager.font20Greeen,),
                        Text("Gender", style: StyleManager.font16Grey,)
                      ],
                    ),
                  ],
                ),
                
                SizedBox(height: 20,),
                
                Text("Healthy weight for the height:", style: StyleManager.font16Black,),
                Text("${result["minWeight"]} kg - ${result["maxWeight"]} kg", style: StyleManager.font20Greeen,),
                
                SizedBox(height: 30,),
                
                CustomElevatedButton(
                  text: "Close", 
                  onPressed: (){
                    Navigator.pop(context);
                  }
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}