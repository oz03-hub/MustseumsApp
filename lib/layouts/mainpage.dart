import 'package:flutter/material.dart';
import 'package:my_flutter_app/ui/attcard.dart';
import '../classes/attraction.dart';

class MainPage extends StatelessWidget {
  final List<Attraction> atts;
  const MainPage({Key? key, required this.atts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                margin: const EdgeInsets.only(left: 30.0, top: 50.0, right: 30.0, bottom: 30.0),
                alignment: Alignment.center,
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 48.0, color: Colors.black87,shadows: [Shadow(color: Colors.black45, offset: Offset(0, 5), blurRadius: 15)]),
                    children: [
                      TextSpan(text: 'Must', style: TextStyle(fontSize: 48.0, color: Colors.blue,shadows: [Shadow(color: Colors.black45, offset: Offset(0, 5), blurRadius: 15)])),
                      TextSpan(text: 'seums')
                    ]
                  ),
                ),
              ),

              SizedBox(
                width: 1000.0,
                  height: 600.0,
                  child: ListView.builder(itemCount: atts.length,
                  padding: const EdgeInsets.all(18.0),
                  itemBuilder: (context, position) {
                    return AttCard(attraction: atts[position]);
                  },
                )
              )
            ],
          ),
        ),
    );
  }
}
