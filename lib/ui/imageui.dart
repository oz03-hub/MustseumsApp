import 'package:flutter/material.dart';

class ImgUi extends StatelessWidget {
  final String path;
  const ImgUi({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      child: Image.asset(path),
    );
  }
}
