import 'package:flutter/material.dart';
import 'package:task4/core/color_managers.dart';
import 'package:task4/core/style_manager.dart';

class CustomGender extends StatelessWidget {
  const CustomGender({
    super.key, required this.gender, required this.imagePath, required this.icon, required this.colorGender, required this.onTap, required this.isSelected,
  });

  final String gender;
  final String imagePath;
  final IconData icon;
  final Color colorGender;
  final Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: gender == "Male" ? ColorManagers.primaryColor.withValues(alpha: 0.2) 
          : ColorManagers.secondryColor.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(32),

          border: (isSelected && ( gender == "Male" || gender == "Female")) 
          ? Border.all(color: colorGender, width: 5) 
          : null
        ),
      
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(gender, style: gender == "Male" ? StyleManager.font32Greeen : 
            StyleManager.font32pink,),
      
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(imagePath,),
            
                Positioned(
                  top: -5,
                  left: -10,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: colorGender,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          blurRadius: 100,
                          blurStyle: BlurStyle.solid,
                          offset: Offset(5, 3)
                        ),
                      ],
                    ),
                  
                    child: Icon(icon, color: Colors.white, size: 36,),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
