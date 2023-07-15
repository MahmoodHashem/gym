

import 'package:flutter/material.dart';
import 'package:gym/Workout/tutorial.dart';

class PlanWorkouts extends StatefulWidget {
  const PlanWorkouts({Key? key}) : super(key: key);

  @override
  State<PlanWorkouts> createState() => _PlanWorkoutsState();
}

class _PlanWorkoutsState extends State<PlanWorkouts> {
  var images = ['chest.jpg', 'shoulder.jpg', 'lat.jpg','blade.jpg','bicep.jpg','tricep.jpg', 'forearm.jpg', 'abs.jpg',
    'abs.png', 'leg.jpg'];
  var trainings = ["حرکات سینه","حرکات سرشانه","حرکات زیر بغل","حرکات کول","حرکات جلو بازو","حرکات پشت بازو ","حرکات مچ و ساعد",
    "حرکات شکم","حرکات پا"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(12),
      child:  ListView.builder(
        itemCount: trainings.length,
        itemBuilder: (context, i){
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
              },
              leading: Hero(
                tag: 'chest$i',
                child: Container(
                 height: 120,
                  width: 60,
                  child: Image(image: AssetImage('assets/pictures/${images[i]}'), fit: BoxFit.fill,),
                ),
              ),
              title: Text('${trainings[i]}',
                textAlign: TextAlign.end,
              ),
            ),
          );
        },
      ),),
    );
  }
}

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var chest = ['متوازی','پرس سینه هالتر','پرس سینه دمبل','پرس بالا سیه هالتر ',
    'پرس سینه دستگاه','پرس بالا سینه دستگاه','پرس زیر سینه هالتر','پرس زیر سینه دمبل',
    'پروانه دستگاه', 'کراس اور از پایین','کراس اور','پلاور دمبل','پرس سینه دستگاه خوابیده',
    'شنا صعودی','شنا دست باز'];
  var chestImages = ['متوازی','پرس سینه هالتر','پرس سینه دمبل','بالا سینه هالتر','پرس سینه دستگاه',
    'پرس سینه دستگاه','زیر سینه هالتر','زیر سینه دمبل','پروانه دستگاه','کراس اور از پایین','کراس اور','پروانه','پرس سینه دستگاه خوابیده ',
    'شنا سوئدی','شنا باز',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chest.length,
          itemBuilder:(c,i){
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                subtitle: MaterialButton(
                  onPressed: (){},
                  child: Text('افزودن'),
                  color: Colors.teal,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Tutorial(),));
                },
                leading: Container(
                  width: 60,
                  height: 150,
                  child: Image(image: AssetImage('assets/gifs/${chestImages[i]}.gif'),
                    fit: BoxFit.fill,),
                ),
                title: Text('${chest[i]}',
                  textAlign: TextAlign.end,
                ),
              ),
            );
          } ),
    );
  }
}



