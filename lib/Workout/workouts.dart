
import 'package:flutter/material.dart';
import 'package:gym/Workout/workoutDetails.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class Workouts extends StatefulWidget {
  const Workouts({Key? key}) : super(key: key);

  @override
  State<Workouts> createState() => _WorkoutsState();
}

class _WorkoutsState extends State<Workouts> {

  var images = ['chest.jpg', 'shoulder.jpg', 'lat.jpg','blade.jpg','bicep.jpg','tricep.jpg',
  'forearm.jpg', 'abs.jpg','leg.jpg'];
  var trainings = ["حرکات سینه","حرکات سرشانه","حرکات زیر بغل","حرکات کول","حرکات جلو بازو","حرکات پشت بازو ","حرکات مچ و ساعد",
  "حرکات شکم","حرکات پا"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/pictures/wallpapaer.jpg',),
              fit:BoxFit.cover,
            ),
          ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: trainings.length,
                itemBuilder: (context, i){
                  return Card(
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
                      },
                    leading: Hero(
                      tag: 'chest$i',
                      child: CircleAvatar(
                        radius: 30,
                        foregroundImage: AssetImage('assets/pictures/${images[i]}'),
                      ),
                    ),
                    title: Text('${trainings[i]}',
                      textAlign: TextAlign.end,
                    ),
                    ),
                  );
                },
            ),
          ),
        ],
      ),
    );
  }
}
