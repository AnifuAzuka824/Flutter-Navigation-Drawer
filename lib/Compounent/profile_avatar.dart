import 'package:flutter/material.dart';
import 'package:project_flutter_loginpage/Compounent/rgb_gradient.dart';

class ProfileAvatar extends StatelessWidget {
  final String inisial;
  final VoidCallback onTapFoto;

  const ProfileAvatar({
    super.key,
    required this.inisial,
    required this.onTapFoto,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 152,
      height: 152,
      child: Stack(
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF7C3AED).withValues(alpha: 0.18),
                    blurRadius: 24,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: ClipOval(
              child: RgbGradient(
                child: Padding(
                  padding: const EdgeInsets.all(9),
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: ShaderMask(
                        shaderCallback: (rect) {
                          return const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF3B82F6),
                              Color(0xFFA855F7),
                              Color(0xFFF97316),
                            ],
                          ).createShader(rect);
                        },
                        blendMode: BlendMode.srcIn,
                        child: Text(
                          inisial,
                          style: const TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 2,
            bottom: 2,
            child: Material(
              color: Colors.white,
              shape: const CircleBorder(),
              elevation: 4,
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: onTapFoto,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.camera_alt,
                    size: 22,
                    color: Color(0xFF1F1F1F),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
