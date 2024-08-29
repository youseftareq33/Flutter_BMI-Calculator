import 'package:flutter/material.dart';

void main(){
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI"),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            //1 --------------------------------------------- Containers (Male and Female Button)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                // male button container
                Expanded(
                  child: Container(
                  
                    // container style
                    margin: EdgeInsets.only(top: 20),
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.black, width: 10),
                      borderRadius: BorderRadius.circular(12)
                    ),
                  
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
                Expanded(
                  child: Container(
                  
                    // container style
                    margin: EdgeInsets.only(top: 20),
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.black, width: 10),
                      borderRadius: BorderRadius.circular(12)
                    ),
                  
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
                        Text("90"),
                        Slider(
                          value: 150,
                          min: 0,
                          max: 200,
                          onChanged: (value){},
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
                      children: [
                        Text("Height"),
                        Text("90"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.add),
                              ),
                            ),

                            IconButton(
                              onPressed: (){},
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
                    decoration: BoxDecoration(color: const Color.fromARGB(255, 159, 214, 161)),
                    child: Column(
                      children: [
                        Text("Height"),
                        Text("90"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.add),
                              ),
                            ),

                            IconButton(
                              onPressed: (){},
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
                    onPressed: (){},
                    child: Text("Calculate"),
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