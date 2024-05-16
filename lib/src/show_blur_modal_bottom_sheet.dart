import 'package:flutter/material.dart';

import 'blur_mask.dart';
import 'build_at_post_frame.dart';

Future<T?> showBlurModalBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
  String? barrierLabel,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  BoxConstraints? constraints,
  Color? barrierColor,
  bool isScrollControlled = false,
  double scrollControlDisabledMaxHeightRatio = 9.0 / 16.0,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  bool? showDragHandle,
  bool useSafeArea = false,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  Offset? anchorPoint,
}) {
  return showDialog(
    useSafeArea: false,
    context: context,
    builder: (context) {
      return BlurMask(
        barrierDismissible: isDismissible,
        backgroundColor: backgroundColor,
        child: BuildAtPostFrame(
          show: () => showModalBottomSheet(
            context: context,
            shape: shape,
            barrierColor: Colors.transparent,
            barrierLabel: barrierLabel,
            elevation: elevation,
            clipBehavior: clipBehavior,
            constraints: constraints,
            isScrollControlled: isScrollControlled,
            scrollControlDisabledMaxHeightRatio:
                scrollControlDisabledMaxHeightRatio,
            enableDrag: enableDrag,
            showDragHandle: showDragHandle,
            useSafeArea: useSafeArea,
            routeSettings: routeSettings,
            transitionAnimationController: transitionAnimationController,
            anchorPoint: anchorPoint,
            builder: builder,
          ).then(Navigator.of(context).pop),
        ),
      );
    },
  );
}
