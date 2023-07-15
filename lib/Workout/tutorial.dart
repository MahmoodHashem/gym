

import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('پرس سینه هالتر',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
          centerTitle: true,
        ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                height: 199,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                      spreadRadius: 3,
                    )
                  ],
                  color: Color(0x33000000),
                  borderRadius: BorderRadius.circular(25),
                  shape: BoxShape.rectangle,
                ),
                child:Image(
                  image: AssetImage('assets/gifs/پرس سینه هالتر.gif',),
                  fit: BoxFit.contain,
                )
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 149,
                decoration: BoxDecoration(
                  color:Color(0x33000000),
                  borderRadius:  BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                      spreadRadius: 3,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/pictures/chest.png',
                            width: 200,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'عضلات هدف',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54,
                            ),
                          ),
                          Text(
                            'عضله اصلی: عضله ای سینه بزرگ \nعضلات فرعی: دلتوئید قدامی، سه سر \nبازویی',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top:20,left:20,right:20),
                height: 191,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Color(0x33000000),
                  borderRadius: BorderRadius.circular(25),
                  shape: BoxShape.rectangle,
                ),
                child:ListView(
                children: [
                  Text(
                    ':توضیحات',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'روی نمیکت صاف دراز بکشید و پا ها را کامل روی زمین قرار دهید. میله باید روی قفسه نیمکت قرار بگیرد. میله را از روی رک بلند کنید و آن را بالای سینه در حالت شرو نگه دارید. میله را پایین بیاورید تا وقتی که به سینه شما برسد این وضعیت را طور خلاصه نگه دارید و اطمینان حاصل کنید که کنترل کامل میله را دارید. اکنون میله را تا وضیعت شروع بالا ببرید. ',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
        ),
            ),
        ]
            ),
      ),
    );
  }
}
