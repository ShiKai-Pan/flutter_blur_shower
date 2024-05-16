import 'package:flutter/painting.dart';

class FlutterBlurShower {
  static FlutterBlurShower get instance => _instance;
  static final FlutterBlurShower _instance = FlutterBlurShower._();
  FlutterBlurShower._();
  double sigma = 10;
  Color backgroundColor = const Color.fromRGBO(0, 0, 0, 0.32);

  init({
    double? sigma,
    Color? backgroundColor,
  }) {
    if (sigma != null) {
      this.sigma = sigma;
    }
    if (backgroundColor != null) {
      this.backgroundColor = backgroundColor;
    }
  }
}
