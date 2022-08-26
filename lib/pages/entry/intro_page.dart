import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../main/main_page.dart';

class IntroPage extends StatefulWidget {

  static const String id  = '/intro_page';
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  PageController _pageController = PageController();
  bool isLastPage = false;





  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => isLastPage = index == 2);
        },
        children: [
          Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:  AssetImage("assets/images/irene-kredenets-dwKiHoqqxk8-unsplash.jpg"),
                          fit: BoxFit.cover
                      )
                  ),)),
              Expanded(child: Column(
                children: const [
                  SizedBox(height: 20,),
                  Text("We provide high",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),),
                  Text("quality products just",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("for you",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                ],
              )),

              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      SmoothPageIndicator(
                          controller: _pageController,
                          count: 3),

                      const SizedBox(height: 20,),

                      SizedBox(
                        height: 50,
                        width: 400,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder()
                          ),
                          onPressed: () => _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeOut), child: const Text("Next"),

                        ),
                      ),
                    ],
                  ))
            ],
          ),
          Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:  AssetImage("assets/images/paul-gaudriault-a-QH9MAAVNI-unsplash.jpg"),
                          fit: BoxFit.cover
                      )
                  ),)),
              Expanded(child: Column(
                children: const [
                  SizedBox(height: 20,),
                  Text("Your satisfaction is",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),),
                  Text("our number one",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("priority",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                ],
              )),

              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      SmoothPageIndicator(
                          controller: _pageController,
                          count: 3),

                      const SizedBox(height: 20,),

                      SizedBox(
                        height: 50,
                        width: 400,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder()
                          ),
                          onPressed: () => _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeOut), child: const Text("Next"),

                        ),
                      ),
                    ],
                  ))
            ],
          ),
          Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:  AssetImage("assets/images/erik-mclean-e_qqXYMDyfM-unsplash.jpg"),
                          fit: BoxFit.cover
                      )
                  ),)),
              Expanded(child: Column(
                children: const [
                  SizedBox(height: 20,),
                  Text("Let's fulfill your",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),),
                  Text("fashion needs with",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("Shoea right now!",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                ],
              )),

              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      SmoothPageIndicator(
                          controller: _pageController,
                          count: 3),

                      const SizedBox(height: 20,),

                      SizedBox(
                          height: 50,
                          width: 400,
                          child: isLastPage ?   ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder()

                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, MainPage.id);

                            }, child: const Text("Get Started"),

                          ) : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder()
                            ),
                            onPressed: () => _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeOut), child: const Text("Next"),

                          )
                      ),
                    ],
                  ))
            ],
          )

        ],
      ),


    );
  }
}