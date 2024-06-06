import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiCalculator(),
    );
  }
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  double _sliderValue = 0.5; // Initial slider value
  double weight = 0.0;
  double weight1 = 70.0;
  int age = 10;

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
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  padding:
                  EdgeInsets.symmetric(horizontal: 2.5, vertical: 16.0),
                  color: Colors.black,
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
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  padding:
                  EdgeInsets.symmetric(horizontal: 2.5, vertical: 16.0),
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.female, color: Colors.white, size: 80),
                      SizedBox(height: 10),
                      Text(
                        "Femalee",
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
                  "$weight",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),

                Slider(
                  value: weight,
                  onChanged: (newValue) {
                    setState(() {
                      weight = newValue;
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
                        style: TextStyle(color: Colors.white,
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
                                  Icons.add, color: Colors.white, size: 25,),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                  print('Age Added');
                                },
                              ),
                            ),
                          ),

                          SizedBox(

                            width: 5,
                          ),

                          Center(
                            child: CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                  print('Age Added');
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
                            fontSize: 30
                            ,
                            color: Colors.white),
                      ),
                      Text(
                        "$weight1",
                        style: TextStyle(color: Colors.white,
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
                                  Icons.add, color: Colors.white, size: 25,),
                                onPressed: () {
                                  setState(() {
                                    weight1++;
                                  });
                                  print('Age Added');
                                },
                              ),
                            ),
                          ),

                          SizedBox(

                            width: 5,
                          ),

                          Center(
                            child: CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                  print('Age Added');
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
              padding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              color: Colors.pink,
              child: Center(child: Text("Calculate BMI",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
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
