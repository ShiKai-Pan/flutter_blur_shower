Language: [English](README.md) | [中文](README_zh-TW.md)

---

# flutter_blur_shower

A Flutter package to apply Gaussian blur to the background of dialogs, popups, and modalBottomSheets.

## Features

- Apply Gaussian blur to the background of dialogs.
- Apply Gaussian blur to the background of modalBottomSheets.
- Easy to use with simple API.

## Installation

Add `flutter_blur_shower` to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_blur_shower: ^0.1.0
```

Then, run `flutter pub get` to install the package.

## Usage

### Initialization

Before using the blur effects, initialize the `FlutterBlurShower` with your desired blur sigma and background color:

```dart
FlutterBlurShower.init(
  sigma: 10.0,
  backgroundColor: Colors.black.withOpacity(0.5),
);
```

### Show Blur Dialog

To show a dialog with a blurred background, use `showBlurDialog`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_blur_shower/flutter_blur_shower.dart';

void _showDialog(BuildContext context) {
  showBlurDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Blur Dialog'),
        content: Text('This is a dialog with a blurred background.'),
        actions: <Widget>[
          TextButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
```

### Show Blur Modal Bottom Sheet

To show a modal bottom sheet with a blurred background, use `showBlurModalBottomSheet`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_blur_shower/flutter_blur_shower.dart';

void _showModalBottomSheet(BuildContext context) {
  showBlurModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        child: Center(
          child: Text('This is a modal bottom sheet with a blurred background.'),
        ),
      );
    },
  );
}
```

## API Reference

### `FlutterBlurShower`

- **`FlutterBlurShower.init({required double sigma, required Color backgroundColor})`**
    - Initializes the `FlutterBlurShower` with the given `sigma` (blur intensity) and `backgroundColor`.

- **`FlutterBlurShower.instance`**
    - Singleton instance of `FlutterBlurShower`.

- **`double get sigma`**
    - Returns the blur sigma value.

- **`Color get backgroundColor`**
    - Returns the background color.

## Example

Here is a full example demonstrating how to use `flutter_blur_shower`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_blur_shower/flutter_blur_shower.dart';

void main() {
  FlutterBlurShower.init(
    sigma: 10.0,
    backgroundColor: Colors.black.withOpacity(0.5),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Blur Shower Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text('Show Blur Dialog'),
                onPressed: () => _showDialog(context),
              ),
              ElevatedButton(
                child: Text('Show Blur Modal Bottom Sheet'),
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
          title: Text('Blur Dialog'),
          content: Text('This is a dialog with a blurred background.'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
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
        return Container(
          height: 200,
          child: Center(
            child: Text('This is a modal bottom sheet with a blurred background.'),
          ),
        );
      },
    );
  }
}
```

## Plans
1. Add blur effects for other types of popups.
2. Provide more customization options.

## License

This project is licensed under the BSD-3-Clause License - see the [LICENSE](LICENSE) file for details.

