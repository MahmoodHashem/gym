

import 'package:flutter/material.dart';


class TipsDetails extends StatelessWidget {
  TipsDetails({Key? key,this.title, this.image}) : super(key: key);

  var title;
  var image;

  String description = 'تخم مرغ در بدنسازی مثل یک گنج، باارزش است. اگر ورزشکار هستید حتما از معجزه تخم مرغ در بدنسازی باخبرید. تخم مرغ در بدنسازی نقش اصلی دارد و عضو جدانشدنی وعده‌های غذایی بدنسازان است. این ماده‌ی غذایی دارای فواید زیادی برای همه‌ی افراد است. اما، در بدنسازی بخاطر تاثیرش در عضله سازی اهمیت فوق‌العاده‌ای دارد؛ تاجایی‌که  بسیاری از تخم‌مرغ به عنوان معجزه‌ی بدنسازی یاد می‌کنند.  \n ';
  String description2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$title'),
          centerTitle: true,
        ),
        body: Padding(padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 10),
                height: 200,
                child: Image(image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),

                  width: double.infinity,
                  height: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text('معجزه تخم مرغ در بدنسازی',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(description,
                          textAlign: TextAlign.end,),
                        Text(description2,
                          textAlign: TextAlign.end,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}