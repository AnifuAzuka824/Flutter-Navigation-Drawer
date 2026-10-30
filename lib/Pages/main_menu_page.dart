import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_loginpage/Compounent/menu_drawer.dart';
import 'package:project_flutter_loginpage/Compounent/rgb_gradient.dart';
import 'package:project_flutter_loginpage/Controller/main_menu_controller.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: const Color(0xFFF7F7F9),
        drawer: const MenuDrawer(),
        appBar: AppBar(
          
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          flexibleSpace: const RgbGradient(),
          title: Text(
            controller.pageTitle,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),
      ),
    );
  }
}
