import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_loginpage/Compounent/detail_hero.dart';
import 'package:project_flutter_loginpage/Compounent/pesan_button.dart';
import 'package:project_flutter_loginpage/Compounent/rating_makanan.dart';
import 'package:project_flutter_loginpage/Compounent/review_card.dart';
import 'package:project_flutter_loginpage/Controller/list_makanan_controller.dart';
import 'package:project_flutter_loginpage/models/makanan_model.dart';

class DetailMakananPage extends StatelessWidget {
  const DetailMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ListMakananController>();

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFF6B35),
        foregroundColor: Colors.white,
        title: const Text(
          "Detail Makanan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
        ],
      ),
      body: Obx(() {
        final MakananModel? makanan = controller.makananTerpilih.value;
        if (makanan == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailHero(fotoMakanan: makanan.fotoMakanan),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      makanan.namaMakanan,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Rp ${makanan.hargaMakanan}",
                      style: const TextStyle(
                        color: Color(0xFFFF6B35),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 14),
                    RatingMakanan(
                      rating: makanan.rating,
                      jumlahUlasan: makanan.reviews.length,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Deskripsi",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      makanan.deskripsiMakanan,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Ulasan Pelanggan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${makanan.reviews.length} ulasan",
                          style: const TextStyle(
                            color: Color(0xFFFF6B35),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: makanan.reviews.length,
                      itemBuilder: (context, index) =>
                          ReviewCard(review: makanan.reviews[index]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
      bottomNavigationBar: Obx(() {
        final MakananModel? makanan = controller.makananTerpilih.value;
        if (makanan == null) return const SizedBox.shrink();
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x0D000000),
                blurRadius: 10,
                offset: Offset(0, -4),
              ),
            ],
          ),
          child: PesanButton(
            label: "Pesan Sekarang",
            onPressed: () {
              Get.snackbar(
                "Berhasil",
                "${makanan.namaMakanan} ditambahkan ke pesanan",
                backgroundColor: const Color(0xFFFF6B35),
                colorText: Colors.white,
                snackPosition: SnackPosition.BOTTOM,
                margin: const EdgeInsets.all(16),
              );
            },
          ),
        );
      }),
    );
  }
}
