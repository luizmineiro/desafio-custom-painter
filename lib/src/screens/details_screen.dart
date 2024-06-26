import 'package:flutter/material.dart';
import 'package:teste_fteam/src/core/config/theme.dart';
import 'dart:math';

class DetailsScreen extends StatelessWidget {
  final String name;

  const DetailsScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: AppTheme.fontSize,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            CustomPaint(
              size: const Size(150, 112),
              painter: MyPainter(),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppTheme.buttonColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final rect1 = Rect.fromLTWH(
      0,
      0,
      size.width,
      size.height,
    );
    final rect2 = Rect.fromLTWH(
      0,
      0,
      size.width / 2,
      size.height - 37,
    );
    final rect3 = Rect.fromLTWH(
      size.width / 2,
      0,
      size.width / 2,
      size.height - 37,
    );

    canvas.drawArc(
      rect1,
      2 * pi,
      pi,
      false,
      paint,
    );
    canvas.drawArc(
      rect2,
      pi,
      -pi,
      false,
      paint,
    );
    canvas.drawArc(
      rect3,
      pi,
      pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
