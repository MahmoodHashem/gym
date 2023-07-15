
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:gym/plans/planWorkouts.dart';

class Weekly extends StatefulWidget {
 Weekly({Key? key,required this.name,}) : super(key: key);

  late String name;

  @override
  State<Weekly> createState() => _WeeklyState(this.name);
}
class _WeeklyState extends State<Weekly> {
  _WeeklyState(this.name,);

  var daysTitle = ['شنبه','یکشنبه','دوشنبه','سه شنبه','چهارشنبه', 'پنج شنبه'];
  List<Widget> days = [];
  String name;

  @override
  Widget build(BuildContext context) {

    for(int i = 0 ; i < daysTitle.length ; i++){
      print('$i');
      days.add(Card(
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          width: 370,
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                child: SizedBox(
                  width: double.infinity,
                  child: Text(daysTitle[i],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => PlanWorkouts()));
                  },
                  child: Text('افزودن حرکت',),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Colors.teal),
                  ),
                ),
              ),


            ],
          ),
        ),
      ));
      print('$i after');
    }

    return Scaffold(
      appBar:AppBar(
        title: Text(name,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:days,
              )],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15, ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: (){}, child: Text('انصراف'),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
                )),
            ElevatedButton(onPressed: (){
              Fluttertoast.showToast(
                  msg: "برنامه ثبت شد ",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 3,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );

            }, child: Text('ثبت'),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

