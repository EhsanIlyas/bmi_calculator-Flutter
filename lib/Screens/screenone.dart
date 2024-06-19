import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/utils/variables.dart';
import 'package:bmi_calculator/Screens/Screentwo.dart';


import '../Components/functions.dart';


class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  void _toggleMaleSelection() {
    setState(() {
      isMaleSelected = true;
      isFemaleSelected = false;
    });
  }

  void _toggleFemaleSelection() {
    setState(() {
      isMaleSelected = false;
      isFemaleSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: AppColors.textcolor),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: buildGenderSelectionContainer(
                  onTap: _toggleMaleSelection,
                  isSelected: isMaleSelected,
                  iconData: Icons.male,
                  label: "Male",
                  activeColor: Colors.pink,
                  inactiveColor: Colors.black,
                  iconColor: Colors.white,
                  textColor: Colors.white,
                ),
              ),
              Expanded(
                child: buildGenderSelectionContainer(
                  onTap: _toggleFemaleSelection,
                  isSelected: isFemaleSelected,
                  iconData: Icons.female,
                  label: "Female",
                  activeColor: Colors.pink,
                  inactiveColor: Colors.black,
                  iconColor: Colors.white,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            margin: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Text(
                  "Height",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "${height.toStringAsFixed(1)}", // Format to one decimal place
                  style: const TextStyle(color: Colors.white, fontSize: 40),
                ),
                Slider(
                  value: height,
                  onChanged: (newValue) {
                    setState(() {
                      height = newValue;
                    });
                  },
                  min: 0.0,
                  max: 10.0,
                  divisions: 100,
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                  thumbColor: Colors.pink,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  color: Colors.black,
                  child: Column(
                    children: [
                      const Text(
                        "Age",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      Text(
                        "$age",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: CircleAvatar(
                              child: IconButton(
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                  print('Age Added');
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Center(
                            child: CircleAvatar(
                              child: IconButton(
                                icon: const Icon(Icons.remove, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                  print('Age Removed');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  color: Colors.black,
                  child: Column(
                    children: [
                      const Text(
                        "Weight",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      Text(
                        "$weight",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: CircleAvatar(
                              child: IconButton(
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                  print('Weight Added');
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Center(
                            child: CircleAvatar(
                              child: IconButton(
                                icon: const Icon(Icons.remove, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                  print('Weight Removed');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                // Implement the BMI calculation logic here
                print('BMI Calculated');
              },
              child:ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenTwo(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Calculate BMI",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),

                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
