import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/pages/entry/intro_page.dart';
import 'package:shoes_app/pages/entry/splash_two.dart';
import 'package:shoes_app/pages/home/home_page.dart';
import 'package:shoes_app/pages/main/main_page.dart';
import 'package:shoes_app/pages/order/order_provider.dart';
import 'package:shoes_app/pages/shop_page.dart';



void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrderProvider(),
      child: MaterialApp(
        home: MainPage(),
        routes: {
          IntroPage.id : (context) => const IntroPage(),
          SplashTwo.id : (context) => const SplashTwo(),
          HomePage.id : (context) => const HomePage(),
          ShopPage.id : (context) => const ShopPage(),
          MainPage.id : (context) => const MainPage(),

        },
      ),
    );
  }
}