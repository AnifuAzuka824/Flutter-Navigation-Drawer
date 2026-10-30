import 'package:flutter/material.dart';
import 'package:project_flutter_loginpage/Compounent/rgb_gradient.dart';

class TombolGradient extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const TombolGradient({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: RgbGradient(
              child: Center(
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
