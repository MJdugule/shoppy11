
import 'package:flutter/material.dart';
import 'package:shoppy11/view/cart/check_out_screen.dart';
import 'package:shoppy11/view/home/home.dart';


class TabNavigationItem {
  final Widget page;

  TabNavigationItem({required this.page});

  static List<TabNavigationItem> get items => [
        TabNavigationItem(page: const HomePage()),
        TabNavigationItem(page: const CartScreen()),
        
      ];
}
