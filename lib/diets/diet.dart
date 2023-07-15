
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dietDetails.dart';



class Diet extends StatefulWidget {
  const Diet({Key? key}) : super(key: key);

  @override
  State<Diet> createState() => _DietState();
}

class _DietState extends State<Diet> {
  var images = ['عضله سازیی', 'غذای های چربی سوز','ماهیچه سازی', 'صبحانه', 'ناهار','غذا های پروتیین دار'];

  var plans = ['رژیم غذایی عضله ساز ', 'رژیم غذایی چربی سوز','ساختن ماهیجه ها ','صبحانه بدنسازی',
    'ناهار برای بدنسازی ','شام متناسب برای رشته بدنسازی',];

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
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            DietDetals(title: plans[i],image:"assets/pictures/${images[i]}.jpg")));
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
    );
  }
}