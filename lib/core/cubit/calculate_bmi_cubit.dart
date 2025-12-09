import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task4/core/funcations.dart';

part 'calculate_bmi_state.dart';

class CalculateBmiCubit extends Cubit<CalculateBmiState> {
  CalculateBmiCubit() : super(CalculateBmiInitial());


  String genderName = "";
  int age = 20;
  int weight = 65;
  int height = 150;
  late Map<String, dynamic> result;
  


  void selectGender({required String gender}){

    genderName = gender;
    emit(SelectGenderState(genderName: genderName));

  }

  void increaceAge(){
    age++;

    emit(SelectAgeState(age: age));
  }

  void decreaceAge(){
    age--;
    
    emit(SelectAgeState(age: age));
  }


  void increaceWeight(){

    weight++;

    emit(SelectWeightState(weight: weight));
    
  }

  void decreaceWeight(){

    weight--;

    emit(SelectWeightState(weight: weight));
    
  }



  void selectHeight({required double heightValue}){

    height = heightValue.toInt();

    
    

    emit(SelectheightState(height: height));

  }



  void calculateBmi(){
    result = calculateBMI(
      height: height.toDouble(), 
      weight: weight, 
      age: age, 
      genderName: genderName);

    emit(BmiResultState(result: result));
  }


}
