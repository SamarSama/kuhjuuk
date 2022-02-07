import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kuhjuuk/registration.dart';

import '../generated/l10n.dart';
import 'listofdata.dart';
class Login extends StatefulWidget {
  final isArabic;
  const Login(this.isArabic,  {Key? key,}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:widget.isArabic?TextDirection.ltr:TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).login,
            textDirection: TextDirection.rtl,
          ),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          color: Colors.white,
          child: ListView(

            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 40,right: 40),
                    child: Text(
                      S.of(context).login,

                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80,left: 10),
                    child: ClipOval(child:
                    Image.asset("asset/Image/handmade.png",width: 100,height: 100,),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),


                    ),
                    hintText:S.of(context).email,


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),


                    ),
                    hintText: S.of(context).password,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(100),
                child: SizedBox(
                  width: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red)
                          )

                      )

                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Registration()));
                    }, child:Text(S.of(context).login) ,

                  ),
                ) ,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)
                            )

                        )

                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListOfData(widget.isArabic)));
                    }, child:Text(S.of(context).Presshere) ,

                  ),
                ) ,
              ),

             
            ],
          ),
        ),

      )

    );
  }
}
