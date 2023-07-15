
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'planDetails.dart';
import 'package:gym/plans/createPlan.dart';

class Plans extends StatefulWidget {
  const Plans({Key? key}) : super(key: key);

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {

  var images = ['ماه اول', 'ماه دوم', 'ماه سوم', 'چربی سوز','حجمی','حرفه ای',];
  var plans = ['برنامه ماه اول', 'برنامه ماه دوم','برنامه ماه سوم ','چربی سوز','حجمی ','حرفه ای',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Expanded(
              child:MasonryGridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                itemCount: 6,
                itemBuilder: (contex,i){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pages(title: plans[i],)));
                    },
                    child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/pictures/${images[i]}.jpg',
                                    width: 300,
                                    height: 188,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  plans[i],
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => Create()));
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
