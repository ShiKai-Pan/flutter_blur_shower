import 'package:flutter/material.dart';

import 'blur_mask.dart';
import 'build_at_post_frame.dart';

Future<T?> showBlurDialog<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  bool barrierDismissible = true,
  Color? barrierColor,
  String? barrierLabel,
  bool useSafeArea = true,
  bool useRootNavigator = true,
  RouteSettings? routeSettings,
  Offset? anchorPoint,
  TraversalEdgeBehavior? traversalEdgeBehavior,
}) {
  return showDialog(
    useSafeArea: false,
    context: context,
    builder: (context) {
      return BlurMask(
        barrierDismissible: barrierDismissible,
        backgroundColor: Colors.transparent,
        child: BuildAtPostFrame(
          show: () => showDialog(
            context: context,
            barrierDismissible: barrierDismissible,
            barrierColor: barrierColor,
            barrierLabel: barrierLabel,
            useSafeArea: useSafeArea,
            useRootNavigator: useRootNavigator,
            routeSettings: routeSettings,
            builder: builder,
            anchorPoint: anchorPoint,
            traversalEdgeBehavior: traversalEdgeBehavior,
          ).then(Navigator.of(context).pop),
        ),
      );
    },
  );
}
