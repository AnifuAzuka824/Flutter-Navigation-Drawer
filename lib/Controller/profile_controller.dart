import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_loginpage/models/profile_item_model.dart';

class ProfileController extends GetxController {
  final String namaPengguna = 'Pengguna';
  final String emailPengguna = 'pengguna@email.com';
  final String inisialPengguna = 'P.U';

  final List<ProfileItemModel> listMenuProfile = const [
    ProfileItemModel(
      icon: Icons.settings,
      judul: 'Pengaturan Akun',
      subjudul: 'Nama, Email, Telepon, Keamanan',
    ),
    ProfileItemModel(
      icon: Icons.receipt_long,
      judul: 'Riwayat Pesanan',
      subjudul: 'Detail & Lacak',
    ),
    ProfileItemModel(
      icon: Icons.credit_card,
      judul: 'Opsi Pembayaran',
      subjudul: 'Kartu, E-wallet',
    ),
    ProfileItemModel(
      icon: Icons.location_on,
      judul: 'Alamat Pengiriman',
      subjudul: 'Lokasi tersimpan',
    ),
    ProfileItemModel(
      icon: Icons.help_outline,
      judul: 'Pusat Bantuan',
      subjudul: 'FAQ & Kontak',
    ),
  ];

  void gantiFoto() {
    _tampilkanPesan(
      'Ganti Foto Profil',
      'Fitur ganti foto profil akan segera tersedia',
      Icons.camera_alt,
    );
  }

  void bukaMenu(ProfileItemModel menu) {
    _tampilkanPesan(
      menu.judul,
      'Halaman ${menu.judul} akan segera tersedia',
      menu.icon,
    );
  }

  void konfirmasiKeluar() {
    Get.defaultDialog(
      title: 'Keluar Akun',
      titleStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF1F1F1F),
      ),
      middleText: 'Apakah kamu yakin ingin keluar dari akun ini?',
      middleTextStyle: const TextStyle(fontSize: 14, color: Color(0xFF6B6B6B)),
      textCancel: 'Batal',
      cancelTextColor: const Color(0xFF6B6B6B),
      textConfirm: 'Keluar',
      confirmTextColor: Colors.white,
      buttonColor: const Color(0xFFF97316),
      radius: 16,
      onConfirm: () {
        Get.back();
        _tampilkanPesan(
          'Sampai Jumpa',
          'Kamu telah keluar dari akun',
          Icons.check_circle_outline,
        );
      },
    );
  }

  void _tampilkanPesan(String judul, String pesan, IconData icon) {
    Get.snackbar(
      judul,
      pesan,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.white,
      colorText: const Color(0xFF1F1F1F),
      icon: Icon(icon, color: const Color(0xFFF97316)),
      margin: const EdgeInsets.all(16),
      borderRadius: 14,
      duration: const Duration(seconds: 2),
      shouldIconPulse: false,
    );
  }
}
