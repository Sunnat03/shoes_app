import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {

  static const String id = 'shop_page';
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black,size: 25,)),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text("Most Popular",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        actions: [
          Padding(padding: EdgeInsets.only(right: 15),
            child:   Icon(CupertinoIcons.search,size: 35,color: Colors.black,),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [

            ],
          )
        ],
      ),
    );
  }
}