import 'dart:async';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;

  double height = 0;
  int age = 0;
  double weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // app bar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: isMale ? Colors.blue : Colors.red),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      // body
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [


            //1 --------------------------------------------- Containers (Male and Female Button)
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  // male button container
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        isMale = true;
                      }),
                      child: Container(
                        
                        // container style
                        decoration: BoxDecoration(
                            color: isMale ? Colors.blue : const Color.fromARGB(255, 154, 164, 172),
                            borderRadius: BorderRadius.circular(12)
                        ),

                        // container content
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // icon
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 70,
                            ),

                            // text
                            Text(
                              "Male",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  // female button container
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(

                        // container style
                        decoration: BoxDecoration(
                            color: isMale ? const Color.fromARGB(255, 154, 164, 172) : Colors.red,
                            borderRadius: BorderRadius.circular(12)
                        ),

                        // container content
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // icon
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 70,
                            ),

                            // text
                            Text(
                              "Female",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 16,
            ),


            //2 --------------------------------------------- Slider (Height size)
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(

                      // container style
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(12)
                      ),

                      // container content
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          const Text(
                            "Height",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          Text(
                            height.toStringAsFixed(2),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),

                          Slider(
                            activeColor: isMale ? Colors.blue : Colors.red,
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
            ),

            const SizedBox(
              height: 16,
            ),


            //3 --------------------------------------------- Age and Weight container
            Expanded(
              child: Row(

                children: [
                  Expanded(

                    // age container
                    child: Container(

                      // container style
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 137, 255, 47),
                          borderRadius: BorderRadius.circular(12)
                      ),

                      // container content
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Age",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),

                          Text(
                            "$age",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),

                          // add and remove button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              // add button
                              Container(

                                // container style
                                decoration: BoxDecoration(
                                  color: isMale ? Colors.blue : Colors.red,
                                  borderRadius: BorderRadius.circular(12),
                                ),

                                // container content
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),


                              // remove button
                              Container(

                                // container style
                                decoration: BoxDecoration(
                                  color: isMale ? Colors.blue : Colors.red,
                                  borderRadius: BorderRadius.circular(12),
                                ),

                                // container content
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age > 0) {
                                        age--;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),



                  // weight container
                  Expanded(
                    child: Container(
                      
                      // container style
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 159, 214, 161),
                          borderRadius: BorderRadius.circular(12)
                      ),

                      // container content
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          const Text(
                            "Weight",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),

                          Text(
                            "${weight.toInt()}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),

                          // add and remove button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              // add button
                              Container(

                                // container style
                                decoration: BoxDecoration(
                                  color: isMale ? Colors.blue : Colors.red,
                                  borderRadius: BorderRadius.circular(12),
                                ),

                                // container content
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                              // remove button
                              Container(

                                // container style
                                decoration: BoxDecoration(
                                  color: isMale ? Colors.blue : Colors.red,
                                  borderRadius: BorderRadius.circular(12),
                                ),

                                // container content
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 0) {
                                        weight--;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
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
            ),

            const SizedBox(
              height: 16,
            ),

            //4 --------------------------------------------- calculate button
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(

                    // button style
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor: isMale ? Colors.blue : Colors.red,
                      foregroundColor: Colors.white,
                    ),

                    // button content
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultPage(
                              isMale: isMale,
                              height: height,
                              weight: weight,
                            ),
                          ));
                    },

                    child: Text("Calculate".toUpperCase()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
