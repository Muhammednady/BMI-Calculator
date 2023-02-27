import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {
  final bool ismale;
  final int result;
  final int age;
  Calculate({
    required this.ismale,
    required this.result,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'BMI RESULT',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: (){
             Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,)),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.fromBorderSide(BorderSide(color: Colors.white,width: 5))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'GENDER : ${(ismale)? 'MALE' : 'FEMALE'}',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  
                ),
                Text(
                  'Result : $result',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text(
                  'AGE : $age',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
