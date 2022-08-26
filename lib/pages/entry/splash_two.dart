import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoes_app/pages/entry/intro_page.dart';

class SplashTwo extends StatefulWidget {

  static const String id = 'splash_two';

  const SplashTwo({Key? key}) : super(key: key);

  @override
  State<SplashTwo> createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {
  @override
  void initState() {
    super.initState();
    _goToIntroPage();
  }

  void _goToIntroPage()async{
    Timer(const Duration(seconds: 3),
          () => Navigator.pushReplacementNamed(context, IntroPage.id),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/giorgio-trovato-LV_4qM5Gf9c-unsplash.jpg"),
              fit: BoxFit.cover
          ),
        ),
        child: Stack(
          children:  [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("Welcome to 👋",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                  Text("Shoea",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 60),),
                  Text("The best sneakers & shoes e-commerce",style: TextStyle(color: Colors.white),),
                  Text("app to the century for your fashion needs",style: TextStyle(color: Colors.white),),
                  SizedBox(height: 50,)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}