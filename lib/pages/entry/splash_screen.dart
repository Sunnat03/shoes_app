import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shoes_app/pages/entry/splash_two.dart';



class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    _goToSplashPage();
  }

  void _goToSplashPage()async{
    Timer(const Duration(seconds: 3),
          () => Navigator.pushReplacementNamed(context, SplashTwo.id),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(child: Image.asset("assets/images/sneaker.png",height: 300,width: 300,)),
          const Text("Shoea",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40,fontStyle: FontStyle.italic),),
          const SizedBox(height: 50,),
          Lottie.asset('assets/lotties/loading.json',height: 90,width: 90)


        ],
      ),

    );
  }
}