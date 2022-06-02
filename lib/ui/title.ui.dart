import 'package:flutter/material.dart';

class TitleUi extends StatelessWidget {
  final String title;
  final String location;
  final double rating;

  const TitleUi({Key? key, required this.title, required this.location, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData icon = Icons.star_border;

    if (rating > 2.0 && rating < 4.0) {
      icon = Icons.star_half;
    } else if (rating > 4.0) {
      icon = Icons.star_rate;
    }

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                child: Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),

              Text(location, style: const TextStyle(fontSize: 16, color: Colors.grey))
            ],
          )),

          Icon(icon, color: Colors.red,),
          Container(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(rating.toString(), style: const TextStyle(fontSize: 18.0),),
          )
        ],
      ),
    );
  }
}
