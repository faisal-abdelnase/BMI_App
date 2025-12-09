import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task4/core/cubit/calculate_bmi_cubit.dart';
import 'package:task4/core/style_manager.dart';
import 'package:task4/features/home/widgets/custom_app_bar.dart';
import 'package:task4/core/custom_elevated_button.dart';
import 'package:task4/features/home/widgets/custom_gender.dart';
import 'package:task4/features/result/result_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<CalculateBmiCubit, CalculateBmiState>(
              builder: (context, state) {
                final myCubit = context.read<CalculateBmiCubit>();
                return Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomAppBar(),

                    Text(
                      "Please choose your gender",
                      style: StyleManager.font24Black,
                    ),

                    CustomGender(
                      gender: "Male",
                      imagePath: "assets/images/male.png",
                      icon: Icons.male,
                      colorGender: Color(0xff22689E),
                      onTap: () {
                        myCubit.selectGender(gender: "Male");
                      },

                      isSelected: myCubit.genderName == "Male",
                    ),

                    CustomGender(
                      gender: "Female",
                      imagePath: "assets/images/female.png",
                      icon: Icons.female,
                      colorGender: Color(0xffFF6757),
                      onTap: () {
                        myCubit.selectGender(gender: "Female");
                      },

                      isSelected: myCubit.genderName == "Female",
                    ),

                    SizedBox(height: 40),

                    CustomElevatedButton(
                      text: "Continue",
                      onPressed: () {
                        if (myCubit.genderName.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ResultScreen(),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
