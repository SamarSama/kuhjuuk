import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuhjuuk/UI/Login.dart';
import 'package:kuhjuuk/generated/l10n.dart';

class Open extends StatefulWidget {
  const Open({Key? key}) : super(key: key);

  @override
  _OpenState createState() => _OpenState();
}

class _OpenState extends State<Open> {
  bool isArabic=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:   Center(
          child: DropdownButton<String>(
            dropdownColor: Colors.orange,
            hint: Text(S.of(context).change,style: TextStyle(fontSize: 30,),),
            items: <String>['English', 'Arabic'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {
              if (isArabic) {
                S.load(Locale('ar',));
                setState(() {
                  isArabic=false;
                });
              }  else
              {
                S.load(Locale('en',));
                setState(() {
                  isArabic=true;
                });
              }
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login(isArabic)));
            },
          ),
        ),
      ),
    );
  }
}
