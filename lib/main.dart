import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'Workout/workouts.dart';
import 'package:gym/Workout/workoutDetails.dart';
import 'package:gym/Workout/tutorial.dart';
import 'plans/plan.dart';
import 'diets/diet.dart';
import 'package:gym/tips/tips.dart';
import 'bmi.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:gym/diets/dietDetails.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 3;

  child() {
    switch (_index) {
      case 3:
        return Workouts();
      case 2:
        return Plans();
      case 1:
        return Diet();
      case 0:
        return Tips();
    }
  }

  var title = ['حرکات', 'برنامه ها', 'رژیم غذایی', 'معلومات'];
  int titleNumber = 3;
  Title() {
    switch (_index) {
      case 3:
        return 'حرکات';
      case 2:
        return 'برنامه ها';
      case 1:
        return 'رژیم غذایی';
      case 0:
        return 'معلومات';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Title()),
        centerTitle: true,
      ),
      endDrawer: Neumorphic(
        style: NeumorphicStyle(
          shadowLightColor: Colors.black54,
        ),
        child: Drawer(
          // Add your side menu content here
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black54,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/pictures/wallpaper.jpg',
                      ),
                      fit: BoxFit.fill),
                ),
                child: Text(
                  '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              NeumorphicButton(
                style: NeumorphicStyle(
                  color: Colors.black54,
                  shadowDarkColor: Colors.black54,
                ),
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    'تنظیمات',
                    textAlign: TextAlign.end,
                  ),
                  onTap: () {
                    // Handle option 1 selection
                  },
                ),
              ),
              Divider(
                height: 1,
              ),
              NeumorphicButton(
                style: NeumorphicStyle(
                  color: Colors.black54,
                  shadowDarkColor: Colors.black54,
                ),
                child: ListTile(
                  leading: Icon(Icons.calculate),
                  title: Text(
                    'BMI',
                    textAlign: TextAlign.end,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMICalculatorScreen()));
                    // Handle option 1 selection
                  },
                ),
              ),
              Divider(
                height: 1,
              ),
              NeumorphicButton(
                style: NeumorphicStyle(
                  color: Colors.black54,
                  shadowDarkColor: Colors.black54,
                ),
                child: ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text(
                    'درباره',
                    textAlign: TextAlign.end,
                  ),
                  onTap: () {
                    // Handle option 2 selection
                  },
                ),
              ),
              Divider(
                height: 1,
              ),
              // Add more ListTile widgets for additional menu options
            ],
          ),
        ),
      ),
      body: Center(
        child: child(),
      ),
      bottomNavigationBar: FloatingNavbar(
        onTap: (int val) {
          setState(() {
            _index = val;
          });
        },
        currentIndex: _index,
        items: [
          FloatingNavbarItem(
              icon: Icons.tips_and_updates_outlined, title: 'معلومات '),
          FloatingNavbarItem(icon: Icons.no_food, title: 'رژیم غذایی'),
          FloatingNavbarItem(icon: Icons.book_rounded, title: 'برنامه ها '),
          FloatingNavbarItem(icon: Icons.sports_gymnastics, title: 'حرکات'),
        ],
      ),
    );
  }
}

