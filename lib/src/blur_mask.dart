import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlurMask extends StatelessWidget {
  const BlurMask({
    super.key,
    this.barrierDismissible = true,
    this.sigma,
    this.backgroundColor,
    this.align,
    required this.child,
  });

  final bool barrierDismissible;

  final double? sigma;

  final Color? backgroundColor;

  final Alignment? align;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: () {
              if (barrierDismissible) {
                Navigator.of(context).pop();
              }
            },
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: sigma ?? 10,
                sigmaY: sigma ?? 10,
              ),
              child: ColoredBox(
                color: backgroundColor ?? const Color.fromRGBO(0, 0, 0, 0.32),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: child,
        ),
      ],
    );
  }
}
