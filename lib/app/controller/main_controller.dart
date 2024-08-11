import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
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
  List<Widget> pages = [
    
  ];
  var currentIndex = 0.obs;
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
