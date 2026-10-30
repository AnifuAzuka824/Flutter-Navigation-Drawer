class ReviewModel {
  final String namaUser;
  final String komentar;
  final double rating;
  final String tanggal;

  ReviewModel({
    required this.namaUser,
    required this.komentar,
    required this.rating,
    required this.tanggal,
  });
}

class MakananModel {
  final String namaMakanan;
  final String hargaMakanan;
  final String kategoriMakanan;
  final String fotoMakanan;
  final String deskripsiMakanan;
  final double rating;
  final List<ReviewModel> reviews;

  MakananModel({
    required this.namaMakanan,
    required this.hargaMakanan,
    required this.kategoriMakanan,
    required this.fotoMakanan,
    required this.deskripsiMakanan,
    required this.rating,
    required this.reviews,
  });
}
