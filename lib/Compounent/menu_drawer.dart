import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_loginpage/Compounent/menu_drawer_item.dart';
import 'package:project_flutter_loginpage/Compounent/rgb_gradient.dart';
import 'package:project_flutter_loginpage/Controller/main_menu_controller.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainMenuController>();

    return Drawer(
      width: MediaQuery.of(context).size.width * 0.62,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(24)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 23-26 mengatur ketinggian + lebar
          const SizedBox(
            width: double.infinity,
            height: 220,
            child: RgbGradient(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Menu Navigasi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 24),
          Obx(
            () => Column(
              children: [
                for (int i = 0; i < controller.listMenu.length; i++)
                  MenuDrawerItem(
                    icon: controller.listMenu[i].icon,
                    label: controller.listMenu[i].label,
                    isActive: controller.selectedIndex.value == i,
                    onTap: () {
                      controller.changedPage(i);
                      Get.back();
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
