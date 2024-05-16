Language: [English](README.md) | [中文](README_zh-TW.md)

---

# flutter_blur_shower

一個用來在 Flutter 中將 dialog、popup 和 modalBottomSheet 的背景設置成高斯模糊的套件。

## 功能

- 將 dialog 背景設置成高斯模糊。
- 將 modalBottomSheet 背景設置成高斯模糊。
- 簡單易用的 API。

## 安裝

在您的 `pubspec.yaml` 文件中添加 `flutter_blur_shower`：

```yaml
dependencies:
  flutter_blur_shower: ^0.1.0
```

然後運行 `flutter pub get` 安裝套件。

## 用法

### 初始化

在使用模糊效果之前，請先用您需要的模糊 sigma 和背景顏色初始化 `FlutterBlurShower`：

```dart
FlutterBlurShower.init(
  sigma: 10.0,
  backgroundColor: Colors.black.withOpacity(0.5),
);
```

### 顯示模糊對話框

要顯示背景為模糊的對話框，使用 `showBlurDialog`：

```dart
import 'package:flutter/material.dart';
import 'package:flutter_blur_shower/flutter_blur_shower.dart';

void _showDialog(BuildContext context) {
  showBlurDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('模糊對話框'),
        content: Text('這是一個背景為模糊的對話框。'),
        actions: <Widget>[
          TextButton(
            child: Text('關閉'),
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

### 顯示模糊底部彈出框

要顯示背景為模糊的底部彈出框，使用 `showBlurModalBottomSheet`：

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
          child: Text('這是一個背景為模糊的底部彈出框。'),
        ),
      );
    },
  );
}
```

## API 參考

### `FlutterBlurShower`

- **`FlutterBlurShower.init({required double sigma, required Color backgroundColor})`**
    - 用給定的 `sigma`（模糊強度）和 `backgroundColor` 初始化 `FlutterBlurShower`。

- **`FlutterBlurShower.instance`**
    - `FlutterBlurShower` 的單例實例。

- **`double get sigma`**
    - 返回模糊的 sigma 值。

- **`Color get backgroundColor`**
    - 返回背景顏色。

## 範例

這是一個完整的範例，展示如何使用 `flutter_blur_shower`：

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
          title: Text('模糊效果範例'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text('顯示模糊對話框'),
                onPressed: () => _showDialog(context),
              ),
              ElevatedButton(
                child: Text('顯示模糊底部彈出框'),
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
          title: Text('模糊對話框'),
          content: Text('這是一個背景為模糊的對話框。'),
          actions: <Widget>[
            TextButton(
              child: Text('關閉'),
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
            child: Text('這是一個背景為模糊的底部彈出框。'),
          ),
        );
      },
    );
  }
}
```

## 計畫
1. 完善其他彈出框的模糊效果。
2. 提供更多的自定義選項。

## 授權

此專案根據 BSD-3-Clause 授權條款許可 - 詳情請參閱 [LICENSE](LICENSE) 文件。