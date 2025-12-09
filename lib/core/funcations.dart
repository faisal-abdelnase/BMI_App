Map<String, dynamic> calculateBMI({
    required double height,
    required int weight,
    required int age,
    required String genderName,
  }) {
    // height in cm → convert to meters
    final double heightInMeters = height / 100;

    // BMI formula
    final double bmi = weight / (heightInMeters * heightInMeters);

    // Determine category
    String category;
    if (bmi < 18.5) {
      category = "Underweight";
    } else if (bmi < 25) {
      category = "Normal";
    } else if (bmi < 30) {
      category = "Overweight";
    } else {
      category = "Obese";
    }

    double minWeight = 18.5 * heightInMeters * heightInMeters;
    double maxWeight = 24.9 * heightInMeters * heightInMeters;

    return {
      "bmi": bmi.toStringAsFixed(1),
      "category": category,
      "gender": genderName,
      "age": age,
      "weight": weight.toInt(),
      "height": height.toInt(),
      "minWeight": double.parse(minWeight.toStringAsFixed(1)),
      "maxWeight": double.parse(maxWeight.toStringAsFixed(1)),
    };
  }
