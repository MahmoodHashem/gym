

import 'package:flutter/material.dart'; 


class Pages extends StatelessWidget {
  Pages({Key? key, this.title}) : super(key: key);

  var title;

  int activePage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  var pages = [
    PlanDetail(),
    PlanDetail1(),
    PlanDetail2()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PlanDetail()));
                },
                child: Card(
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
                            child: Text('روز اول',
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


                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PlanDetail()));
                },
                child: Card(
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
                            child: Text('روز دوم',
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
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PlanDetail()));
                },
                child: Card(
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
                            child: Text('روز سوم',
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
                      ],
                    ),
                  ),
                ),
              ),

            ],
          )],
      ),
    );
  }
}

class PlanDetail extends StatelessWidget {
  PlanDetail({Key? key}) : super(key: key);

  var reps = ['3x8','3x10','3x10','3x8','3x8','3x12','3x10','3x10','3x15', '3x30'];
  var planWorkouts = ['پرس سینه دمبل',
    'بالا سینه دمبل','زیر بغل سیم کش','قایقی','سرشانه دستگاه',
        'نشر جانب دمبل','پشت بازو سیم کش ','جلو بازو سیمکش',
        'جلو بازو هالتر','پلانک',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text(
    'برنامه ماه اول ',
    style:TextStyle(
    color: Colors.white,
    fontSize: 22,
    )),
     centerTitle: true,
        elevation: 20,
      ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(image:AssetImage('assets/pictures/gym8.jpeg'),
                fit: BoxFit.cover),
              ),

              height: 200,
              width: double.infinity,
              child: Text("روز اول ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),)
            ),

            Expanded(
              child: ListView.separated(
                  itemBuilder: (c,i){
                    return ListTile(
                      title: Text(planWorkouts[i],
                      textAlign: TextAlign.end,),
                      leading: Image.asset('assets/pictures/gym.png',
                      fit: BoxFit.fill,),
                      subtitle: Text(reps[i]),

                    );
                  }, separatorBuilder: (c,i){
                    return Divider();
              }, itemCount: planWorkouts.length),
            ),
          ],
        ),
    );
  }
}
class PlanDetail1 extends StatelessWidget {
  PlanDetail1({Key? key}) : super(key: key);

  var reps = ['3x8','3x12','3x12','3x8','3x12','3x10','3x10'];
  var planWorkouts = ['جلو پا دستگاه',
    'اسکات پا','پشت پا','ساق پا ایستاده','مسگری',''
        'کرانچ','شکم متوازی'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'برنامه ماه اول ',
            style:TextStyle(
              color: Colors.white,
              fontSize: 22,
            )),
        centerTitle: true,
        elevation: 20,
      ),
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(image:AssetImage('assets/pictures/gym8.jpeg'),
                    fit: BoxFit.cover),
              ),

              height: 200,
              width: double.infinity,
              child: Text("روز دوم ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),)
          ),

          Expanded(
            child: ListView.separated(
                itemBuilder: (c,i){
                  return ListTile(
                    title: Text(planWorkouts[i],
                      textAlign: TextAlign.end,),
                    leading: Image.asset('assets/pictures/gym.png',
                      fit: BoxFit.fill,),
                    subtitle: Text(reps[i]),

                  );
                }, separatorBuilder: (c,i){
              return Divider();
            }, itemCount: planWorkouts.length),
          ),
        ],
      ),
    );
  }
}
class PlanDetail2 extends StatelessWidget {
  PlanDetail2({Key? key}) : super(key: key);

  var reps = [];
  var planWorkouts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'برنامه ماه اول',
            style:TextStyle(
              color: Colors.white,
              fontSize: 22,
            )),
        centerTitle: true,
        elevation: 20,
      ),
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(image:AssetImage('assets/pictures/gym8.jpeg'),
                    fit: BoxFit.cover),
              ),

              height: 200,
              width: double.infinity,
              child: Text("روز سوم ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),)
          ),

          Expanded(
            child: ListView.separated(
                itemBuilder: (c,i){
                  return ListTile(
                    title: Text('پرس سینه',
                      textAlign: TextAlign.end,),
                    leading: Image.asset('assets/pictures/gym.png',
                      fit: BoxFit.fill,),
                    subtitle: Text('3x10'),

                  );
                }, separatorBuilder: (c,i){
              return Divider();
            }, itemCount: 10),
          ),
        ],
      ),
    );
  }
}
