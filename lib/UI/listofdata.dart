import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'ListItem.dart';
class ListOfData extends StatefulWidget {
  final isArabic;

  const ListOfData(this.isArabic, {Key? key}) : super(key: key);

  @override
  _ListOfDataState createState() => _ListOfDataState();
}

class _ListOfDataState extends State<ListOfData> {



  var ListItemsAr=[

    ListItem("وش سلندر",true,"asset/Image/f.jpg","20"),
    ListItem("كبوت",false,"asset/Image/f.jpg","20"),
    ListItem("كوتش",false,"asset/Image/handmade.png","20"),
    ListItem("بطارية",false,"asset/Image/handmade.png","20"),


  ];
  var ListItemsEn=[

    ListItem("wesh slinder",true,"asset/Image/f.jpg","20"),
    ListItem("kabot",false,"asset/Image/f.jpg","20"),
    ListItem("kawetch",false,"asset/Image/handmade.png","20"),
    ListItem("battery",false,"asset/Image/handmade.png","20"),


  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(

      textDirection:widget.isArabic?TextDirection.ltr:TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView.builder(
          itemCount: ListItemsAr.length,
            itemBuilder: (_,int index){
              if(widget.isArabic==false){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ListItemsEn[index].image),
                    Text(ListItemsEn[index].ProductName),
                    Text(ListItemsEn[index].Price),

                  ],
                );
              }else{
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ListItemsAr[index].image),
                    Text(ListItemsAr[index].ProductName),
                    Text(ListItemsAr[index].Price),

                  ],
                );
              }

            }
        ),
      ),

    );
  }
}
