import 'package:flutter/material.dart';
import 'package:flutter_blur_shower/flutter_blur_shower.dart';

void main() {
  FlutterBlurShower.init(
    sigma: 10.0,
    backgroundColor: Colors.black.withOpacity(0.5),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Blur Shower Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: const Text('Show Blur Dialog'),
                onPressed: () => _showDialog(context),
              ),
              ElevatedButton(
                child: const Text('Show Blur Modal Bottom Sheet'),
                onPressed: () => _showModalBottomSheet(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showBlurDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Blur Dialog'),
          content: const Text('This is a dialog with a blurred background.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showBlurModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const SizedBox(
          height: 200,
          child: Center(
            child:
                Text('This is a modal bottom sheet with a blurred background.'),
          ),
        );
      },
    );
  }
}
