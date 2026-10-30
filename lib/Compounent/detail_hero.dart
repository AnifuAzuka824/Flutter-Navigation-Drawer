import 'package:flutter/material.dart';

class DetailHero extends StatelessWidget {
  final String fotoMakanan;

  const DetailHero({
    super.key,
    required this.fotoMakanan,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(24),
        ),
        image: DecorationImage(
          image: NetworkImage(fotoMakanan),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
