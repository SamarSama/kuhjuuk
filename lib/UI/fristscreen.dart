import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuhjuuk/generated/l10n.dart';

import 'Login.dart';
import 'listofdata.dart';

class FristScreen extends StatefulWidget {
  const FristScreen({Key? key}) : super(key: key);

  @override
  _FristScreenState createState() => _FristScreenState();
}

class _FristScreenState extends State<FristScreen> {
  bool isArabic=false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
        child: Scaffold(
        appBar: AppBar(
            title:  Text('Home Page'),
            actions:[
              IconButton(onPressed: (){}, icon: Icon(Icons.eight_k_plus_rounded)),

            ]

        ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20,left: 20),
                child: ElevatedButton(

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                              side: BorderSide(color: Colors.red)
                          )

                      )
                  ),
                  onPressed: (){
                    //اى اكشن عايزة الزرار يعمله تكتبى الكود جوة الكوسين الكيرلى
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListOfData(isArabic)));
                  },
                  child: Center(
                    child: Text("مدخل المستخدم"),
                  ),
                ),
              ),

             Center(
                child: DropdownButton<String>(
                  dropdownColor: Colors.orange,
                  hint: Text(S.of(context).change,style: TextStyle(fontSize: 30,),),
                  items: <String>['Arabic', 'English'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {
                    if (isArabic) {
                      S.load(Locale('en',));
                      setState(() {
                        isArabic=false;
                      });
                    }  else
                    {
                      S.load(Locale('ar',));
                      setState(() {
                        isArabic=true;
                      });
                    }
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login(isArabic)));
                  },
                ),
              ),


            ],
          ),

      )

    );
  }
}
