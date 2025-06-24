import 'dart:math';

import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AppLoadingIndicator extends StatefulWidget {
  const AppLoadingIndicator({
    this.size = 64,
    this.color,
    super.key,
  });

  final double size;
  final Color? color;

  @override
  State<AppLoadingIndicator> createState() => _AppLoadingIndicatorState();
}

class _AppLoadingIndicatorState extends State<AppLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, __) {
            return CustomPaint(
              painter: _ArcLoaderPainter(
                context: context,
                color: widget.color,
                angle: _controller.value * 2 * pi,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ArcLoaderPainter extends CustomPainter {
  _ArcLoaderPainter({
    required this.context,
    required this.color,
    required this.angle,
  });

  final BuildContext context;
  final Color? color;
  final double angle;

  @override
  void paint(Canvas canvas, Size size) {
    final color = this.color ?? context.colors.primary;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final strokeWidth = size.width / 10;

    final backgroundPaint = Paint()
      ..color = color.withValues(alpha: 0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final arcPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    // Background circle
    canvas.drawCircle(center, radius - 5, backgroundPaint);

    // Rotating arc
    const sweep = pi * 0.6;
    final rect = Rect.fromCircle(center: center, radius: radius - 5);
    canvas.drawArc(rect, angle, sweep, false, arcPaint);
  }

  @override
  bool shouldRepaint(_ArcLoaderPainter oldDelegate) =>
      oldDelegate.angle != angle;
}
