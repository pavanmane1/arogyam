import 'package:flutter/material.dart';

class GradientProgressIndicator extends StatelessWidget {
  final double value;
  final List<Color> gradientColors;
  final IconData arrowIconData;
  final Color arrowColor;
  final bool isLeftAligned; // New parameter for dynamic alignment

  GradientProgressIndicator({
    required this.value,
    required this.gradientColors,
    required this.arrowIconData,
    required this.arrowColor,
    required this.isLeftAligned, // Assign dynamic alignment
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(right: 4), // Adjust padding if needed
              child: Icon(
                arrowIconData,
                color: arrowColor,
                size: 25,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: value,
              backgroundColor: Colors.transparent,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.transparent),
            ),
          ),
        ],
      ),
    );
  }
}

class BMIStatusWidget extends StatelessWidget {
  final double bmi;

  BMIStatusWidget({required this.bmi});

  @override
  Widget build(BuildContext context) {
    Color barColor;
    String statusText;
    IconData iconData;
    IconData arrowIconData;
    Color arrowColor;

    // Define BMI range and corresponding colors and icons
    if (bmi < 18.5) {
      barColor = Colors.red;
      statusText = 'Underweight';

      arrowIconData = Icons.arrow_downward;
      arrowColor = Colors.red;
    } else if (bmi < 25.0) {
      barColor = Colors.green;
      statusText = 'Normal Weight';
      iconData = Icons.check;
      arrowIconData = Icons.check;
      arrowColor = Colors.green;
    } else if (bmi < 30.0) {
      barColor = Colors.orange;
      statusText = 'Overweight';
      iconData = Icons.arrow_upward;
      arrowIconData = Icons.arrow_upward;
      arrowColor = Colors.orange;
    } else {
      barColor = Colors.red;
      statusText = 'Obese';
      iconData = Icons.arrow_upward;
      arrowIconData = Icons.arrow_upward;
      arrowColor = Colors.red;
    }

    return Column(
      children: [
        SizedBox(height: 8),
        Text(
          statusText,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'BMI Status:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        /*  GradientProgressIndicator(
          isLeftAligned: true,
          value: bmi / 50.0, // Normalize BMI to a range of 0.0 - 1.0
          gradientColors: [Colors.blue, Colors.green, Colors.yellow, Colors.orange, Colors.red],
          arrowIconData: arrowIconData,
          arrowColor: arrowColor,
        ), */
      ],
    );
  }
}
