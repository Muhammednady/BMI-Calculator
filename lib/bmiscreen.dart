import 'dart:math';

import 'package:flutter/material.dart';

import 'calculate.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
 
 bool isMale = true;
 double height = 80.0;
 int weight = 60;
 int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                      
                       setState(() {
                          isMale = true;
                       });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: isMale ? Colors.red :Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 90,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'MALE',
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 20),
                                )
                              ],
                            ),
                          )),
                    )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                       setState(() {
                         isMale = false;
                       });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                             color: isMale ? Colors.white.withOpacity(0.2):Colors.red ,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 90,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'FEMALE',
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 20),
                                )
                              ],
                            ),
                          )),
                    )),
              ],
            )),
            SizedBox(height: 20),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.round()}',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 50,
                            color: Colors.white),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      )
                    ],
                  ),
                  Slider(
                    value: height,
                    min: 80,
                    max: 220,
                    onChanged: (double val) {
                      setState(() {
                          height = val;

                      });
                     
                    },
                    thumbColor: Colors.red,
                    activeColor: Colors.grey,
                    inactiveColor: Colors.grey,
                  ),
                ],
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Container(
                         decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.grey),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                   setState(() {
                                     weight--;
                                   });
                                  },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  backgroundColor: Colors.grey,
                                  heroTag: 'weight--',
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                     weight++;
                                   });
                                  },
                                  child: Icon(Icons.add),
                                  mini: true,
                                  backgroundColor: Colors.grey,
                                   heroTag: 'weight++',
                                ),
                              ],
                            )
                          ],
                        ))),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Container(
                         decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.grey),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                     age--;
                                   });
                                  },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  backgroundColor: Colors.grey,
                                   heroTag: 'age--',
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                     age++;
                                   });
                                  },
                                  child: Icon(Icons.add),
                                  mini: true,
                                  backgroundColor: Colors.grey,
                                   heroTag: 'age++',
                                ),
                              ],
                            )
                          ],
                        ))),
              ],
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadiusDirectional.vertical(
                      bottom: Radius.circular(50))),
              padding: EdgeInsetsDirectional.symmetric(vertical: 5),
              width: double.infinity,
              child: TextButton(
                  onPressed: () {
                  double result = weight / pow(height/100,2);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Calculate(ismale: isMale, result: result.round(), age: age);
                  }));
                    
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'CALCULATE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 130,
                        height: 5,
                        color: Colors.black.withOpacity(0.5),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
