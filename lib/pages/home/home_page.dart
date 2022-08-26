import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/pages/home/home_provider.dart';

import '../../views/category_view.dart';
import '../shop_page.dart';

class HomePage extends StatelessWidget {
  static const String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        builder: (context,widget){
          var homeProvider = Provider.of<HomeProvider>(context, listen: false);
          // get all data in server or local
          homeProvider.getAllCategories();
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(

              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: false,
              automaticallyImplyLeading: false,
              leading: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/image_2022-06-23_16-33-46.png"),
                ),
              ),
              title: Column(
                children: const [
                  Text("Good Morning 👋",style: TextStyle(color: Colors.grey),),
                  Text("Clara Watson",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ],

              ),
              actions: const [
                Icon(CupertinoIcons.bell,color: Colors.black,size: 25,),
                Padding(
                  padding: EdgeInsets.only(right: 10,left: 5),
                  child: Icon(CupertinoIcons.heart,color: Colors.black,size: 25,),
                )
              ],

            ),
            body: SingleChildScrollView(
              // physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  // #search
                  Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 5,left: 5,top: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(CupertinoIcons.list_bullet_indent,color: Colors.grey,),
                            prefixIcon: Icon(CupertinoIcons.search,color: Colors.grey,),
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none
                        ),

                      ),
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("Special Offers",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15),),
                      Text("See All",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15),),
                    ],
                  ),

                  speacialOffer(image: "assets/images/modern-sale-banner-template-with-fluid-shapes_1361-1389.webp", percentage: "25"),

                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Column(
                        children: [
                          GestureDetector(

                            onTap: (){
                              // TODO: write function
                            },
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey.shade400,
                              child: Image.asset("assets/images/nike.png",height: 50,width: 50,),
                            ),
                          ),
                          const Text("Nike")
                        ],
                      ),



                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade400,
                            child: Image.asset("assets/images/adidas.png",height: 40,width: 40,),
                          ),
                          const Text("Adidas")
                        ],
                      ),


                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade400,
                            child: Image.asset("assets/images/puma.png",height: 40,width: 40,),
                          ),
                          const Text("Puma")
                        ],
                      ),



                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade400,
                            child: Image.asset("assets/images/oasis.png",height: 60,width: 60,),
                          ),
                          const Text("Asics"),
                        ],
                      ),




                    ],
                  ),

                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Column(
                        children: [
                          GestureDetector(

                            onTap: (){
                              // TODO: write function
                            },
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey.shade400,
                              child: Image.asset("assets/images/rebook.png",height: 50,width: 50,),
                            ),
                          ),
                          const Text("Reebok")
                        ],
                      ),



                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade400,
                            child: Image.asset("assets/images/nb.png",height: 40,width: 40,),
                          ),
                          const Text("New Ba.")
                        ],
                      ),


                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade400,
                            child: Image.asset("assets/images/arrow.png",height: 50,width: 50,),
                          ),
                          const Text("Converse")
                        ],
                      ),



                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade400,
                            child: Image.asset("assets/images/more.png",height: 35,width: 35,),
                          ),
                          const Text("More"),
                        ],
                      ),




                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("Most Popular",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, ShopPage.id);
                          },
                          child: Text("See All",style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w800),)),
                    ],
                  ),

                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(15),
                    itemCount: homeProvider.categories.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return CategoryView(category: homeProvider.categories[index]);
                    },
                  )
                ],

              ),
            ),
          );

        }



    );
  }

  Widget speacialOffer({required String image,required String percentage}){
    return Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image:  DecorationImage(
            image: AssetImage(image),fit: BoxFit.cover
        ),
      ),
      child: ClipRRect(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(30),
        child:   Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const SizedBox(height: 60,),
                  Text('$percentage%',style: const TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),),
                  const Text("Today's special",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                  const Text("Get discount for every",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                  const Text("order, only valid for today",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}