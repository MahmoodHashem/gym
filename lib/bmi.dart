

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';



class BMICalculatorScreen extends StatefulWidget {
  @override
  _BMICalculatorScreenState createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
   String? bmiResult;
   String? bmiCategory;

  double bmi = 0;

  void calculateBMI() {
    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text);


    if (weight != null && height != null) {
       bmi = weight / ((height / 100) * (height / 100));
      setState(() {
        bmiResult = bmi.toStringAsFixed(2);
        bmiCategory = getBMICategory(bmi);
      });
    } else {
      setState(() {
        bmiResult = ' ';
        bmiCategory = '';
      });
    }
  }
  
  String getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 25.0) {
      return 'Normal Weight';
    } else if (bmi < 30.0) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }
  Color getBMICategoryColor(double bmi){
    if (bmi < 18.5) {
      return Colors.red;
    } else if (bmi < 25.0) {
      return Colors.green;
    } else if (bmi < 30.0) {
      return Colors.orangeAccent;
    } else {
      return Colors.deepPurple;
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('شاخص حجم بدنی '),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(16.0),
    child: Expanded(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                child:TextField(
                  style: TextStyle(
                    decorationColor: Colors.grey,
                  ) ,
                  controller: heightController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                     labelText: 'قد (سانتیمتر)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                ),
              ),
                SizedBox(width: 10,),
                Expanded(
                  child:TextField(
                    textAlign: TextAlign.center,
                    controller: weightController,
                    decoration: InputDecoration(
                       labelText: 'وزن(کیلوگرام) ',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                    ),
                  ),
                ),
              ]
            ),
            SizedBox(
              height: 30,
            ),
            NeumorphicButton(
              style: NeumorphicStyle(
                lightSource: LightSource.bottomLeft,
                color: Colors.grey,
                shadowLightColor: Colors.black,

              ),
              child: Text('محاسبه'),
              onPressed: calculateBMI,
            ),
            SizedBox(
              height: 50,
            ),
           Card(
             child: Container(
               height: 50,
               width: double.infinity,
               color: Colors.grey,
               child:Align(
                 alignment: Alignment.center,
                 child: Text(bmiResult == null? ' ': ' $bmiResult ',
                   textAlign: TextAlign.center,

                 ),
               ),
             ),
           ),
           Card(
             child: Container(
               margin: EdgeInsets.all(8),
               color: Colors.black.withOpacity(0.6),
               child: Column(
                 children: [
                   Container(
                     color: getBMICategoryColor(bmi) == Colors.red ? Colors.red: Colors.grey,
                     height: 50,
                     width: double.infinity,
                     child: Align(
                       alignment: Alignment.center,
                       child: Text('کم وزن',
                       textAlign: TextAlign.center,

                       ),
                     ),
                   ),
                   Divider(
                     height:1,
                   ),
                   Container(
                     color: getBMICategoryColor(bmi) == Colors.green ? Colors.green: Colors.grey,
                     height: 50,
                     width: double.infinity,
                     child: Align(
                       alignment: Alignment.center,
                       child: Text('نورمال ',
                         textAlign: TextAlign.center,

                       ),
                     ),
                   ),
                   Divider(
                     height:1,
                   ),
                   Container(
                     color: getBMICategoryColor(bmi) == Colors.orangeAccent ? Colors.yellow: Colors.grey,
                     height: 50,
                     width: double.infinity,
                     child: Align(
                       alignment: Alignment.center,
                       child: Text('اضافه وزن',
                         textAlign: TextAlign.center,

                       ),
                     ),
                   ),
                   Divider(
                     height:1,
                   ),
                   Container(
                     color: getBMICategoryColor(bmi) == Colors.deepPurple ? Colors.orange: Colors.grey,
                     height: 50,
                     width: double.infinity,
                     child: Align(
                       alignment: Alignment.center,
                       child: Text('چاق ',
                         textAlign: TextAlign.center,

                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
          ],

        ),
      ),
    ),
        ),
        ),
    );
  }
}