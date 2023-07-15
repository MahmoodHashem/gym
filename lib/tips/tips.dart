
import 'package:flutter/material.dart';
import 'tipsDetails.dart';


class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {

  var title = ['شیر','تخم مرغ','گوشت','گوشت مرغ','ماهی','کیله','بادام زمینی','خرما','سیب',];
  var subtitle = ['خواص شیر بسیاز زیاد است...','تخم مرغ از غذاهای پروتیین دار است ','گوشت سرخ فوایدی زیادی دارد',
    'گوشت مرغ از منابع پروتیین به حساب می آید که ....','ماهی غنی از آهن ... ','کیله دارای خواص مولتی ویتامین',
    'جایگزین گوشت','خرما غنی از کربوهایدرایت ','سیب ضامن سلامتی',];
  var images = ['شیر1','تخم مرغ1','گوشت','گوشت مرغ','ماهی', 'کیله','بادام','خرما','سیب',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.separated(
          itemCount: title.length,
          itemBuilder: (c,i){
        return  Card(
          elevation: 5,
          child: ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => TipsDetails(title:title[i], image:'assets/pictures/${images[i]}.jpg' ,)));
            },
            leading: Image.asset('assets/pictures/${images[i]}.jpg', fit: BoxFit.fill,),
            title: Text('${title[i]}',
              textAlign: TextAlign.end,
            ),
            subtitle: Text('${subtitle[i]}',
              textAlign: TextAlign.end,
            ),
          ),
        );
      },
      separatorBuilder: (c,i){
            return Divider(height: 1,);
      },
      )
    );
  }
}
