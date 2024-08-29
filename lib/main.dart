import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BMI Calculator',
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;

  double height = 0.0;

  int age = 0;
  double weight = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          //1 --------------------------------------------- Containers (Male and Female Button)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // male button container
              GestureDetector(
                onTap: () => setState(() {
                  isMale = true;
                }),
                child: Container(
                  // container style
                  margin: EdgeInsets.only(top: 20),
                  width: 120,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.black, width: 5),
                      borderRadius: BorderRadius.circular(12)),

                  // container content
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // icon
                      Icon(
                        Icons.male,
                        color: Colors.white,
                        size: 50,
                      ),

                      // text
                      Text("Male"),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 10,
              ),

              // female button container
              InkWell(
                onTap: () {
                  setState(() {
                    isMale = false;
                  });
                },
                child: Container(
                  // container style
                  margin: EdgeInsets.only(top: 20),
                  width: 120,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.black, width: 5),
                      borderRadius: BorderRadius.circular(12)),

                  // container content
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // icon
                      Icon(
                        Icons.female,
                        color: Colors.white,
                        size: 50,
                      ),

                      // text
                      Text("Female"),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //2 --------------------------------------------- Slider (Height size)
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 200,
                  color: Colors.yellow,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Height"),
                      Text("$height"),
                      Slider(
                        value: height.toDouble(),
                        min: 0,
                        max: 200,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //3 ---------------------------------------------
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Age"),
                      Text("$age"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            icon: Icon(Icons.remove),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 159, 214, 161)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Weight"),
                      Text("$weight"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                  weight--;
                              });
                            },
                            icon: Icon(Icons.remove),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //4 ---------------------------------------------
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(height: height, weight: weight,),
                        ));
                  },
                  child: Text("Calculate"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
