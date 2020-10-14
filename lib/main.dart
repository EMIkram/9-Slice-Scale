import 'package:flutter/material.dart';

void main() {
  runApp(NineSlice());
}
//
final Color primaryColor = Colors.orange;
final TargetPlatform platform = TargetPlatform.android;

class NineSlice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("9 slice")),
        body: Center(
          // src of img: https://developer.mozilla.org/en-US/docs/Web/CSS/border-image
          child: Image.network(
            'https://mdn.mozillademos.org/files/4127/border.png',
            height: 300,
            fit: BoxFit.fill,
            centerSlice: Rect.fromLTWH(27, 27, 27, 27),
          ),
        ),
      ),
    );
  }
}