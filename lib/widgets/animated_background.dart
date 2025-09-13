import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../utils/app_theme.dart';

class AnimatedBackground extends StatelessWidget {
  final Widget child;
  final List<Color>? colors;

  const AnimatedBackground({
    super.key,
    required this.child,
    this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors ?? [
            AppTheme.backgroundColor,
            AppTheme.surfaceColor,
            AppTheme.backgroundColor,
          ],
          stops: const [0.0, 0.5, 1.0],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -100,
            right: -100,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    AppTheme.primaryColor.withValues(alpha: 0.1),
                    Colors.transparent,
                  ],
                ),
                borderRadius: BorderRadius.circular(100),
              ),
            ).animate(onPlay: (controller) => controller.repeat()).scale(
              duration: 4000.ms,
              begin: const Offset(0.8, 0.8),
              end: const Offset(1.2, 1.2),
            ),
          ),
          Positioned(
            bottom: -150,
            left: -150,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    AppTheme.secondaryColor.withValues(alpha: 0.1),
                    Colors.transparent,
                  ],
                ),
                borderRadius: BorderRadius.circular(150),
              ),
            ).animate(onPlay: (controller) => controller.repeat()).scale(
              duration: 6000.ms,
              begin: const Offset(1.0, 1.0),
              end: const Offset(0.7, 0.7),
            ),
          ),
          child,
        ],
      ),
    );
  }
}