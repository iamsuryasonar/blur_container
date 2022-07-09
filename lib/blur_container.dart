library blur_container;

import 'dart:ui';
import 'package:flutter/material.dart';

class BlurContainerWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry padding;
  final Widget? child;
  final Gradient? gradient;
  final Border? border;
  final Color? color;

  const BlurContainerWidget({
    Key? key,
    this.width,
    this.height,
    this.borderRadius,
    this.padding = const EdgeInsets.all(0.0),
    this.gradient,
    this.border,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 7.0,
              sigmaY: 7.0,
            ),
            child: SizedBox(
              height: height,
              width: width,
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: gradient,
              border: border,
              color: color,
              borderRadius: borderRadius,
            ),
            child: Padding(padding: padding, child: child),
          ),
        ],
      ),
    );
  }
}
