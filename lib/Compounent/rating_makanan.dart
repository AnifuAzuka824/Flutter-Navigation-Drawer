import 'package:flutter/material.dart';
import 'package:project_flutter_loginpage/Compounent/rating_bintang.dart';

class RatingMakanan extends StatelessWidget {
  final double rating;
  final int jumlahUlasan;

  const RatingMakanan({
    super.key,
    required this.rating,
    required this.jumlahUlasan,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBintang(rating: rating),
        const SizedBox(width: 8),
        Text(
          "($jumlahUlasan ulasan)",
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
