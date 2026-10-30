import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_loginpage/Controller/list_makanan_controller.dart';
import 'package:project_flutter_loginpage/models/makanan_model.dart';

class HomePages extends StatelessWidget {
  HomePages({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            "Daftar Makanan",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 200,
          child: Obx(
            () => ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.listMakanan.length,
              itemBuilder: (context, index) {
                final MakananModel makanan = controller.listMakanan[index];
                return Container(
                  width: 150,
                  margin: const EdgeInsets.only(left: 10),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () => controller.bukaDetail(makanan),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.network(
                              makanan.fotoMakanan,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.fastfood);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Text(makanan.namaMakanan),
                                Text("Rp ${makanan.hargaMakanan}"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
