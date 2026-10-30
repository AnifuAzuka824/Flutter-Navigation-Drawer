import 'package:flutter/material.dart';

class RgbGradient extends StatefulWidget {
  final Widget? child;

  const RgbGradient({super.key, this.child});

  @override
  State<RgbGradient> createState() => _RgbGradientState();
}

class _RgbGradientState extends State<RgbGradient>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Color _warna(double hue) {
    return HSVColor.fromAHSV(1, (hue + 360) % 360, 0.8, 0.95).toColor();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final double hue = _controller.value * 360;
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                _warna(hue),
                _warna(hue + 120),
                _warna(hue + 240),
              ],
            ),
          ),
          child: child,
          
        );
      },
      child: widget.child,
    );
  }
}
