import 'package:flutter/material.dart';
import 'package:my_flutter_app/classes/attraction.dart';
import 'package:my_flutter_app/ui/bottombuttons.dart';
import 'package:my_flutter_app/ui/comments.dart';
import 'package:my_flutter_app/ui/imageui.dart';
import 'package:my_flutter_app/ui/information.dart';
import 'package:my_flutter_app/ui/title.ui.dart';

class AttPage extends StatelessWidget {
  final Attraction attraction;
  const AttPage({Key? key, required this.attraction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 18.0),
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back_ios, color: Colors.blue, size: 24.0,),
                      Text('Back', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.blue),)
                    ],
                  ),
                ),
              ),
              ImgUi(path: attraction.imgPath),
              TitleUi(title: attraction.label, location: attraction.location, rating: attraction.rating,),
              Information(info: attraction.information,),
              const BottomButtons(),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 16.0),
                child: const Text('Comments', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w300), textAlign: TextAlign.start,),
              ),
              SizedBox(
                  height: 250.0,
                  child: ListView(
                  padding: const EdgeInsets.all(18.0),
                  children: [
                    Comment(comment: 'Student discounts', time: TimeOfDay.now()),
                    Comment(comment: 'Left wing > right wing', time: TimeOfDay.now()),
                    Comment(comment: 'Student discounts', time: TimeOfDay.now()),
                    Comment(comment: 'Left wing > right wing', time: TimeOfDay.now()),
                    Comment(comment: 'Student discounts', time: TimeOfDay.now()),
                    Comment(comment: 'Left wing > right wing', time: TimeOfDay.now()),
                  ],
                )
              )
            ],
          ),
        ),
    );
  }
}
