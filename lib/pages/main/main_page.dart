import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../cart/cart_page.dart';
import '../home/home_page.dart';
import '../order/order_page.dart';
import '../profile/profile_page.dart';
import '../wallet/wallet_page.dart';
import 'main_provider.dart';

class MainPage extends StatelessWidget {
  static const id = "/main_page";
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainProvider(),
      builder: (context, widget) {

        var mainProvider = Provider.of<MainProvider>(context, listen: false);

        return Scaffold(
          body: PageView(
            onPageChanged: mainProvider.onPageChanged,
            controller: mainProvider.pageController,
            children: const [
              HomePage(),
              CartPage(),
              OrderPage(),
              WalletPage(),
              ProfilePage()

            ],
          ),

          bottomNavigationBar: Consumer<MainProvider>(
              builder: (context, main, child) {
                return BottomNavigationBar(
                  unselectedItemColor: Colors.grey.shade400,
                  selectedItemColor: Colors.black,
                  elevation: 0,
                  backgroundColor: Colors.white,
                  currentIndex: main.currentPage,
                  onTap: main.onTapNavigatorIcon,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.home),
                        label: "Home"
                    ),

                    BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_bag),
                        label: "Cart"
                    ),

                    BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_cart),
                        label: "Orders"
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.money_euro),
                        label: "Wallet"
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.profile_circled),
                        label: "Profile"
                    ),
                  ],
                );
              }
          ),
        );
      },
    );
  }
}