import 'package:flutter/material.dart';
import 'package:bmi_calculator/utils/variables.dart';
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
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
                child: GestureDetector(
                  onTap: _toggleMaleSelection,
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    padding: EdgeInsets.symmetric(horizontal: 2.5, vertical: 16.0),
                    color: isMaleSelected ? Colors.pink : Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.male, color: Colors.white, size: 80),
                        SizedBox(height: 10),
                        Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: _toggleFemaleSelection,
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    padding: EdgeInsets.symmetric(horizontal: 2.5, vertical: 16.0),
                    color: isFemaleSelected ? Colors.pink : Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.female, color: Colors.white, size: 80),
                        SizedBox(height: 10),
                        Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            margin: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  "Height",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "$height",
                  style: TextStyle(color: Colors.white, fontSize: 40),
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
                  divisions: 10,
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
                  margin: EdgeInsets.all(15.0),
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  color: Colors.black,
                  child: Column(
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      Text(
                        "$age",
                        style: TextStyle(
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
                                icon: Icon(
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
                          SizedBox(width: 5),
                          Center(
                            child: CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.remove),
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
                  margin: EdgeInsets.all(15.0),
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  color: Colors.black,
                  child: Column(
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      Text(
                        "$weight",
                        style: TextStyle(
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
                                icon: Icon(
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
                          SizedBox(width: 5),
                          Center(
                            child: CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.remove),
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
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              color: Colors.pink,
              child: Center(
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
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
