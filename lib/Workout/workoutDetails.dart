import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'tutorial.dart';

class FullScreen extends StatefulWidget {
  const FullScreen({Key? key}) : super(key: key);

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
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
  var lat = ['زیر بغل سیم کش از جلو','زیر بغل سیم کش از پشت','زیر بغل سیم کش وی بار',
    'زیر بغل قایقی','زیر بغل اره ای دمبل','بارفیکس','تی بار','زیربغل سیم کش دست صاف',
    'زیر بغل هالتر خم دست باز','پارویی معکوس','زیر بغل پارویی ایستاده سیم کش',
    'زیر بغل پارویی معلق','دمبل خم','پارویی سیم کش تک دست','تی بار دستگاه','زیر بغل سیم کش دست جمع از چلو '];
  var shoulder = ['پرس سرشانه دمبل','پروانه معکوس','نشر خم دمبل','نشر از جانب دمبل','نشر از جانب سیم کش تک',
    'نشر از جلو دمبل','نشر از جلو سیم کش','نشر از جلو هالتر','نشر خم سیم کش معکوس','نشر خم نشسته دمبل',
    'پرس سرشانه هالتر از جلو ایستاده','پرس سرشانه هالتر از پشت ایستاده','کول هالتر','پرس سرشانه دستگاه',
    'نشر از جانب سیم کش ',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: AppBar(
          automaticallyImplyLeading: true,
          title: Align(
            alignment: Alignment.center,
            child: Text(
              'حــــــرکات ســینه',
              style: TextStyle(
                fontFamily: 'Aldhabi',
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Hero(
              tag: 'chest0',
              child: Image(
                image: AssetImage('assets/pictures/chest.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: ListView.builder(
        itemCount: chest.length,
          itemBuilder:(c,i){
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
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
