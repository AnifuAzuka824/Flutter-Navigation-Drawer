import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_loginpage/Compounent/profile_avatar.dart';
import 'package:project_flutter_loginpage/Compounent/profile_menu_item.dart';
import 'package:project_flutter_loginpage/Compounent/tombol_gradient.dart';
import 'package:project_flutter_loginpage/Controller/profile_controller.dart';

class ProfilePages extends StatelessWidget {
  ProfilePages({super.key});

  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFF4FBFF),
            Color(0xFFFBF5FF),
            Color(0xFFFFF8F3),
          ],
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
        child: Column(
          children: [
            ProfileAvatar(
              inisial: controller.inisialPengguna,
              onTapFoto: controller.gantiFoto,
            ),
            const SizedBox(height: 16),
            Text(
              controller.namaPengguna,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F1F1F),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              controller.emailPengguna,
              style: const TextStyle(fontSize: 15, color: Color(0xFF6B6B6B)),
            ),
            const SizedBox(height: 24),
            for (final item in controller.listMenuProfile) ...[
              ProfileMenuItem(
                item: item,
                onTap: () => controller.bukaMenu(item),
              ),
              const SizedBox(height: 14),
            ],
            const SizedBox(height: 10),
            TombolGradient(label: 'Keluar', onTap: controller.konfirmasiKeluar),
          ],
        ),
      ),
    );
  }
}
