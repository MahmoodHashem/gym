
import 'package:flutter/material.dart';
import 'package:gym/plans/planDetails.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'planWorkouts.dart';
import 'weekly.dart';


final _formKey = GlobalKey<FormState>();

class Create extends StatefulWidget {
  Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

var options = ['روزانه', 'هفته گی'];

class _CreateState extends State<Create> {


  var Name = ' ';

  var options2 = [true, false];
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('ساخت برنامه جدید',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),),
        centerTitle: true,
      ),

      body: Center(
        child: Padding(
            padding: EdgeInsets.all(40),
          child: Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.all(30),

              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'لطفا نام برنامه را وارد کنید';
                      } return null;
                    },
                    textAlign: TextAlign.end,
                    textDirection: TextDirection.ltr,
                    onChanged: (name){
                      Name = name;
                    },
                    decoration: InputDecoration(
                        hintText: 'نام برنامه: مثل مقدماتی',
                        labelStyle: TextStyle(
                          locale: Locale('fa'),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                    ) ,
                  ),
                  TextFormField(
                      textAlign: TextAlign.end,
                      textDirection: TextDirection.ltr,
                    decoration: InputDecoration(
                        hintText: 'عضلات هدف',
                        labelStyle: TextStyle(
                          locale: Locale('fa'),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                    ) ,
                  ),
                  TextFormField(
                    textAlign: TextAlign.end,
                    textDirection: TextDirection.ltr,
                    decoration: InputDecoration(
                        hintText: 'منبع/مربی',
                        labelStyle: TextStyle(
                          locale: Locale('fa'),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                    ) ,
                  ),
                  TextFormField(
                    textAlign: TextAlign.end,
                    textDirection: TextDirection.ltr,
                    decoration: InputDecoration(
                        hintText: 'نوع برنامه: مثل چربی سوزی، حجمی ',
                        labelStyle: TextStyle(
                          locale: Locale('fa'),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                    ) ,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Expanded(
                          child: ListTile(
                            title: Text('روزانه',
                              textAlign: TextAlign.end,),
                            trailing: Radio(
                              value: options[0],
                              groupValue: currentOption,
                              onChanged: (value){
                                setState(() {
                                  currentOption = value.toString();

                                });
                              },
                            ),
                          )
                      ),
                      Expanded(
                          child: ListTile(
                            title: Text('هفته گی ',
                              textAlign: TextAlign.end,),
                            trailing: Radio(
                              value: options[1],
                              groupValue: currentOption,
                              onChanged: (value){
                                setState(() {
                                  currentOption = value.toString();

                                });
                              },
                            ),
                          )
                      ),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: (){
                       Navigator.pop(context);
                      }, child: Text('انصراف'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
                      ),),
                      ElevatedButton(onPressed: (){
                        if(_formKey.currentState!.validate()){
                          if(currentOption == options[0])
                            Navigator.push(context,MaterialPageRoute(builder: (context) => NewPlan(name: Name)));
                          else
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Weekly(name: Name)));
                        }

                      }, child: Text('تایید'))
                    ],
                  )
                ],
              ),
            )),
        ),
      ),

    );
  }
}

class NewPlan extends StatefulWidget {
  NewPlan({Key? key,required this.name,}) : super(key: key);

 late String name;

  @override
  State<NewPlan> createState() => _NewPlanState(this.name);
}
class _NewPlanState extends State<NewPlan> {
  _NewPlanState(this.name,);

  var daysTitle = ['روز اول','روز دوم','روز سوم','روز چهارم','روز پنجم '];

  int i = 0;

  List<Widget> days = [];

  String name;

  @override
  Widget build(BuildContext context) {

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
                 setState(() {
                   if(days.length < 5) {
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
                     i++;
                   }else{
                     Fluttertoast.showToast(
                         msg: "نمی توانید بیش از پنج روز بیافزایید",
                         toastLength: Toast.LENGTH_LONG,
                         gravity: ToastGravity.BOTTOM,
                         timeInSecForIosWeb: 3,
                         backgroundColor: Colors.red,
                         textColor: Colors.white,
                         fontSize: 16.0
                     );
                   }
                 });
            }, child: Text('افزودن روز'),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.teal.shade600),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text('ثبت'),
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


