

import 'package:flutter/material.dart'; 

class DietDetals extends StatelessWidget {
   DietDetals({Key? key,this.title, this.image}) : super(key: key);

   var title;
   var image;

   String description = 'فرایند عضله‌سازی، تنها محدود به تعداد ست و تکرارها نیست. شما برای افزایش قدرت و عضله‌سازی نیاز به رژیم غذاییِ حجم‌دهنده دارید. یعنی باید کالریِ بیشتری نسبت به آنچه در روز می‌سوزانید، مصرف کنید؛ البته این به معنای پرخوری نیست.';
   String description2 = "به جای سه وعده غذای عادی، شش وعده غذاییِ مفید و کم‌حجم داشته باشند.\n تا حد ممکن از فست‌فودها و غذاهای سرخ‌شده پرهیز کرده و مواد غذاییِ سالم و مفید مثل ماهی، گوشت قرمز، تخم‌مرغ، لبنیات کم‌چرب، برنج قهوه‌ای، میوه و نان گندم استفاده کنید.\n"
       "قبل از ورزش، باید یک وعده غذایی همراه با مایعات میل کنید. در وعده غذایی که دو ساعت قبل از تمرین مصرف می‌شود، باید نسبت پروتئین به کربوهیدارت ۱ به ۲ باشد. این وعده باید شامل ۴۰ گرم پروتئین و ۸۰ گرم کربوهیدرات باشد.\n"
       "۳۰ دقیقه قبل از ورزش باید ۲۰ گرم پروتئین و ۴۰ گرم کربوهیدرات از میوه‌ها دریافت کرد.\n"
       "بعد از انجام تمرینات باید ۲۰ تا ۴۰ گرم پروتئین و ۴۰ تا ۱۰۰ گرم کربوهیدرات (زود هضم) مصرف کرد.";

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
                      child: Text('شروع پر قدرت رژیم عضله سازی',
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
