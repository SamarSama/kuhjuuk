import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تسجيل حساب",
          textDirection: TextDirection.rtl,
        ),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 40),
                child: Text(
                  "تسجيل حساب,",
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

                }, child:Text("انشاء حساب") ,

              ),
            ) ,
          ),
        ],
      ),
    );
  }
}
