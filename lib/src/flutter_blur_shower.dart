import 'package:flutter/painting.dart';

class FlutterBlurShower {
  static FlutterBlurShower get instance => _instance;
  static final FlutterBlurShower _instance = FlutterBlurShower._();
  FlutterBlurShower._();
  double get sigma => _sigma;
  double _sigma = throw UnimplementedError(
      'sigma is not implemented, Please call FlutterBlurShower.init method first.');

  Color get backgroundColor => _backgroundColor;
  Color _backgroundColor = throw UnimplementedError(
      'backgroundColor is not implemented, Please call FlutterBlurShower.init method first.');

  static init({
    required double sigma,
    required Color backgroundColor,
  }) {
    FlutterBlurShower.instance._sigma = sigma;
    FlutterBlurShower.instance._backgroundColor = backgroundColor;
  }
}
