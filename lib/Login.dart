import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kuhjuuk/registration.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تسجيل دخول",
          textDirection: TextDirection.rtl,
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
       color: Colors.green,
        child: ListView(

          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 40),
                  child: Text(
                    "تسجيل دخول,",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80,left: 50),
                  child: ClipOval(child:
                  Image.asset("assets/images/handmade.png",width: 100,height: 100,),
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
  hintText: "ادخل الايميل",


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
                  hintText: "ادخل الرقم السرى",

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

                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Registration()));
                }, child:Text("دخول") ,

                ),
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
