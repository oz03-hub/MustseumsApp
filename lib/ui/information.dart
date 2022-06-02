import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  final String info;

  const Information({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(info, style: const TextStyle(fontSize: 18.0),),
    );
  }
}
