import 'package:get/get.dart';
import 'package:project_flutter_loginpage/models/makanan_model.dart';
import 'package:project_flutter_loginpage/routes.dart';

class ListMakananController extends GetxController {
  final List<MakananModel> dataAwal = [
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "18.000",
      kategoriMakanan: "Makanan Berat",
      fotoMakanan:
          "https://upload.wikimedia.org/wikipedia/commons/8/8d/Soto_ayam_lamongan.jpg",
      deskripsiMakanan:
          "Soto Ayam khas Nusantara dengan kuah bening gurih berbumbu kunyit, suwiran ayam kampung, telur rebus, tauge segar, dan taburan bawang goreng. Disajikan hangat bersama nasi putih dan kerupuk.",
      rating: 4.7,
      reviews: [
        ReviewModel(
          namaUser: "Budi Santoso",
          komentar:
              "Kuah kaldunya terasa pekat tapi tetap lezat di lidah. Ayamnya empuk dan bumbunya meresap. Porsi nasi dan sotonya pas untuk makan siang.",
          rating: 5.0,
          tanggal: "2 hari yang lalu",
        ),
        ReviewModel(
          namaUser: "Siti Aminah",
          komentar:
              "Rasa kuahnya cukup autentik, Sayangnya tauge kurang matang menurut saya, tapi secara keseluruhan tetap enak.",
          rating: 4.5,
          tanggal: "1 minggu yang lalu",
        ),
      ],
    ),
    MakananModel(
      namaMakanan: "Lentog Tanjung",
      hargaMakanan: "22.000",
      kategoriMakanan: "Makanan Berat",
      fotoMakanan:
          "https://upload.wikimedia.org/wikipedia/commons/a/a9/Lentog.jpg",
      deskripsiMakanan:
          "Kuliner khas Kudus berupa lontong yang disiram sayur tahu dan lodeh gori (nangka muda) berkuah santan, dilengkapi dengan sambal dan kerupuk renyah.",
      rating: 4.5,
      reviews: [
        ReviewModel(
          namaUser: "Dewi Lestari",
          komentar:
              "Kuah santannya tidak terlalu kental, pas untuk sarapan. Lontongnya padat dan gori-nya empuk. Sambalnya kurang pedas, mungkin bisa minta tambah.",
          rating: 4.5,
          tanggal: "3 hari yang lalu",
        ),
        ReviewModel(
          namaUser: "Rian Hidayat",
          komentar:
              "Porsinya cukup mengenyangkan. Rasa bumbunya khas Kudus, tidak seperti lontong sayur Jakarta yang lebih manis.",
          rating: 4.5,
          tanggal: "5 hari yang lalu",
        ),
      ],
    ),
    MakananModel(
      namaMakanan: "Pindang Kerbau",
      hargaMakanan: "25.000",
      kategoriMakanan: "Makanan Berat",
      fotoMakanan:
          "https://upload.wikimedia.org/wikipedia/commons/7/7a/Pindang_Patin_Palembang_1.jpg",
      deskripsiMakanan:
          "Sup daging kerbau khas Muria dengan kuah bening berwarna cokelat kemerahan dari bumbu rempah seperti lengkuas, serai, dan daun salam. Daging kerbau empuk dan kaya rasa.",
      rating: 4.6,
      reviews: [
        ReviewModel(
          namaUser: "Hadi Sucipto",
          komentar:
              "Daging kerbaunya empuk dan tidak bau. Kuahnya gurih dengan aroma rempah yang khas. Cocok dimakan dengan nasi hangat.",
          rating: 5.0,
          tanggal: "1 hari yang lalu",
        ),
        ReviewModel(
          namaUser: "Nurul Hidayah",
          komentar:
              "Rasa pindangnya autentik, bumbu rempahnya terasa jelas. Porsinya cukup besar untuk harga segini.",
          rating: 4.0,
          tanggal: "4 hari yang lalu",
        ),
      ],
    ),
    MakananModel(
      namaMakanan: "Jenang Kudus",
      hargaMakanan: "15.000",
      kategoriMakanan: "Camilan",
      fotoMakanan:
          "https://upload.wikimedia.org/wikipedia/commons/a/ad/Jenang_Kudus.jpg",
      deskripsiMakanan:
          "Jenang khas Kudus bertekstur kenyal dengan rasa manis legit perpaduan santan dan gula merah. Cocok sebagai oleh-oleh atau camilan tradisional saat santai.",
      rating: 4.6,
      reviews: [
        ReviewModel(
          namaUser: "Maya Putri",
          komentar:
              "Teksturnya kenyal dan tidak lengket di tangan karena sudah dibalut tepung tipis. Manisnya pas, tidak bikin eneg meskipun dimakan beberapa potong.",
          rating: 5.0,
          tanggal: "1 hari yang lalu",
        ),
        ReviewModel(
          namaUser: "Rudi Setiawan",
          komentar:
              "Kemasannya rapi, awet beberapa minggu di suhu ruang. Dijadikan oleh-oleh keluarga, semua suka. Aroma gula merahnya terasa.",
          rating: 4.0,
          tanggal: "1 minggu yang lalu",
        ),
      ],
    ),
    MakananModel(
      namaMakanan: "Bolang Baling",
      hargaMakanan: "5.000",
      kategoriMakanan: "Camilan",
      fotoMakanan:
          "https://upload.wikimedia.org/wikipedia/commons/6/6d/Bola_Ubi.jpg",
      deskripsiMakanan:
          "Camilan tradisional berbentuk bulat dari adonan tepung ketan dan ubi, digoreng hingga keemasan. Tekstur luar renyah, dalam lembut dan manis alami dari ubi.",
      rating: 4.3,
      reviews: [
        ReviewModel(
          namaUser: "Lina Marlina",
          komentar:
              "Renyah di luar, lembut di dalam. Manisnya pas dari ubi, tidak perlu gula tambahan. Cocok untuk camilan sore hari.",
          rating: 4.5,
          tanggal: "2 hari yang lalu",
        ),
        ReviewModel(
          namaUser: "Joko Widodo",
          komentar:
              "Harganya sangat terjangkau. Rasanya mengingatkan saya pada camilan masa kecil. Enak dimakan hangat.",
          rating: 4.0,
          tanggal: "1 minggu yang lalu",
        ),
      ],
    ),
  ];

  final RxList<MakananModel> listMakanan = <MakananModel>[].obs;
  final RxString kategoriTerpilih = 'Semua'.obs;
  final Rx<MakananModel?> makananTerpilih = Rx<MakananModel?>(null);

  final List<String> pilihanKategori = const [
    'Semua',
    'Makanan Berat',
    'Camilan',
  ];

  @override
  void onInit() {
    super.onInit();
    listMakanan.assignAll(dataAwal);
  }

  List<MakananModel> get makananTampil {
    if (kategoriTerpilih.value == 'Semua') {
      return listMakanan;
    }
    return listMakanan
        .where((makanan) => makanan.kategoriMakanan == kategoriTerpilih.value)
        .toList();
  }

  void ubahKategori(String? kategori) {
    if (kategori != null) {
      kategoriTerpilih.value = kategori;
    }
  }

  void bukaDetail(MakananModel makanan) {
    makananTerpilih.value = makanan;
    Get.toNamed(Routes.detailmakanan);
  }

  void hapusMakanan(MakananModel makanan) {
    listMakanan.remove(makanan);
  }
}
