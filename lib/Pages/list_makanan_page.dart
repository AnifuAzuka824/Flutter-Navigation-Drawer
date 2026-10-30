import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_loginpage/Controller/list_makanan_controller.dart';
import 'package:project_flutter_loginpage/Compounent/header_beranda.dart';
import 'package:project_flutter_loginpage/Compounent/kategori_dropdown.dart';
import 'package:project_flutter_loginpage/Compounent/makanan_card.dart';
import 'package:project_flutter_loginpage/models/makanan_model.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFF6B35),
        foregroundColor: Colors.white,
        title: const Text(
          "List Makanan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const HeaderBeranda(
            title: "Mau makan apa hari ini?",
            subtitle: "Selamat Datang",
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Obx(
              () => KategoriDropdown(
                value: controller.kategoriTerpilih.value,
                items: controller.pilihanKategori,
                onChanged: controller.ubahKategori,
              ),
            ),
          ),
          Flexible(
            child: Obx(
              () => ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: controller.makananTampil.length,
                itemBuilder: (context, index) {
                  final MakananModel makanan = controller.makananTampil[index];
                  return MakananCard(
                    makanan: makanan,
                    onTap: () => controller.bukaDetail(makanan),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
