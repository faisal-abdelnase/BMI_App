import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task4/core/color_managers.dart';
import 'package:task4/core/cubit/calculate_bmi_cubit.dart';
import 'package:task4/core/custom_elevated_button.dart';
import 'package:task4/core/style_manager.dart';
import 'package:task4/features/home/widgets/custom_app_bar.dart';
import 'package:task4/features/result/widgets/custom_weight_and_age.dart';
import 'package:task4/features/result/widgets/dialog_widget.dart';
import 'package:task4/features/result/widgets/set_height_widget.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  

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
                    Row(
                      spacing: 40,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: ColorManagers.primaryColor,
                          ),
                        ),

                        CustomAppBar(),
                      ],
                    ),

                    Text(
                      "Please Modify the values",
                      style: StyleManager.font24Black,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomWeightAndAge(
                          text: "Weight (kg)",
                          value: myCubit.weight,
                          onPressedAdd: () {
                            myCubit.increaceWeight();
                          },

                          onPressedRemove: () {
                            myCubit.decreaceWeight();
                          },
                        ),

                        CustomWeightAndAge(
                          text: "Age",
                          value: myCubit.age,
                          onPressedAdd: () {
                            myCubit.increaceAge();
                          },

                          onPressedRemove: () {
                            myCubit.decreaceAge();
                          },
                        ),
                      ],
                    ),

                    SetHeightWidget(
                      height: myCubit.height.toDouble(),
                      onChanged: (value) {
                        myCubit.selectHeight(heightValue: value);
                      },
                    ),

                    SizedBox(height: 50),

                    CustomElevatedButton(
                      text: "Calculate",
                      onPressed: () {
                        myCubit.calculateBmi();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return DialogWidget(result: myCubit.result);
                          },
                        );
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
