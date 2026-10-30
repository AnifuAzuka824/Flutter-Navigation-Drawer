import 'package:flutter/material.dart';

class HistoryPages extends StatelessWidget {
  const HistoryPages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.history, size: 80, color: Color(0xFFFF6B35)),
          SizedBox(height: 16),
          Text(
            "Belum Ada Riwayat",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "Riwayat pesanan kamu akan muncul di sini",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
