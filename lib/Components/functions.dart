

import 'package:flutter/material.dart';
import 'package:bmi_calculator/utils/variables.dart';
import 'package:bmi_calculator/utils/app_colors.dart';


Widget buildGenderSelectionContainer({
  required VoidCallback onTap,
  required bool isSelected,
  required IconData iconData,
  required String label,
  required Color activeColor,
  required Color inactiveColor,
  required Color iconColor,
  required Color textColor,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.symmetric(horizontal: 2.5, vertical: 16.0),
      color: isSelected ? activeColor : inactiveColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, color: iconColor, size: 80),
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      ),
    ),
  );
}
