import 'package:flutter/material.dart';
import 'package:task4/core/color_managers.dart';

class StyleManager {

  static TextStyle font32Greeen = TextStyle(
    fontSize: 32, 
    color: ColorManagers.primaryColor,
    fontWeight: FontWeight.bold,
    );

    static TextStyle font20Greeen = TextStyle(
    fontSize: 20, 
    color: ColorManagers.primaryColor,
    fontWeight: FontWeight.bold,
    );

    static TextStyle font64Greeen = TextStyle(
    fontSize: 64, 
    color: ColorManagers.primaryColor,
    fontWeight: FontWeight.bold,
    );

    static TextStyle font32pink = TextStyle(
    fontSize: 32, 
    color: ColorManagers.secondryColor,
    fontWeight: FontWeight.bold,
    );

    static TextStyle font16Grey = TextStyle(
    fontSize: 16, 
    color: ColorManagers.greyColor,
    fontWeight: FontWeight.w500,
    );

    static TextStyle font16Black = TextStyle(
    fontSize: 16, 
    color: Colors.black,
    fontWeight: FontWeight.w500,
    );

  static TextStyle font32Orange = TextStyle(
    fontSize: 32, 
    color: Color(0xffFFB534),
    fontWeight: FontWeight.bold,
    );


  static TextStyle font24Black = TextStyle(
    fontSize: 24, 
    color: Colors.black,
    fontWeight: FontWeight.w500,
    );
}