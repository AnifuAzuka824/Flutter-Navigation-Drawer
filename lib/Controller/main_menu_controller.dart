import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_loginpage/Menu/history.dart';
import 'package:project_flutter_loginpage/Menu/home.dart';
import 'package:project_flutter_loginpage/Menu/profile.dart';
import 'package:project_flutter_loginpage/models/menu_item_model.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changedPage(int index) {
    selectedIndex.value = index;
  }

  final List<MenuItemModel> listMenu = const [
    MenuItemModel(label: "Home", icon: Icons.home_outlined),
    MenuItemModel(label: "History", icon: Icons.history),
    MenuItemModel(label: "Profile", icon: Icons.person_outline),
  ];

  final List<Widget> listPages = [
    HomePages(),
    const HistoryPages(),
    ProfilePages(),
  ];

  String get pageTitle => listMenu[selectedIndex.value].label;
}
