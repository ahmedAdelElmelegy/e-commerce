import 'package:e_commerce_with_firebase/app/ui/pages/Cart/cart_view.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/Explore/Explore_view.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/Home/home_view.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/account/account_view.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/offers/offer_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  List<BottomNavigationBarItem> buttonitem = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
    BottomNavigationBarItem(
        icon: Icon(Icons.local_offer_outlined), label: 'Offer'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
  ];
  List<Widget> pages = const [
    HomeView(),
    ExploreView(),
    CartView(),
    OfferView(),
    AccountView()
  ];
  var currentIndex = 0.obs;
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
