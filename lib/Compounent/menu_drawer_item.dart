import 'package:flutter/material.dart';
import 'package:project_flutter_loginpage/Compounent/rgb_gradient.dart';

class MenuDrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const MenuDrawerItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color warna =
        isActive ? const Color(0xFF1F1F1F) : const Color(0xFF6B6B6B);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: Row(
          children: [
            SizedBox(
              width: 4,
              height: 24,
              child: isActive
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: const RgbGradient(),
                    )
                  : null,
            ),
            const SizedBox(width: 16),
            Icon(icon, size: 26, color: warna),
            const SizedBox(width: 20),
            Text(
              label,
              style: TextStyle(
                fontSize: 17,
                color: warna,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
