import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoader extends StatelessWidget {
  const ShimmerLoader({
    this.width,
    this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.child,
    super.key,
  });

  final double? width;
  final double? height;
  final BorderRadius borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final shimmerChild = child ??
        Container(
          width: width ?? double.infinity,
          height: height ?? 16.0,
          decoration: BoxDecoration(
            color: context.colors.backgroundPrimary,
            borderRadius: borderRadius,
          ),
        );

    return Shimmer.fromColors(
      baseColor: context.colors.stroke,
      highlightColor: context.colors.textDisabled,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.backgroundPrimary,
          borderRadius: borderRadius,
        ),
        child: shimmerChild,
      ),
    );
  }
}
