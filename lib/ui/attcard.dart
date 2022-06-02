import 'package:flutter/material.dart';
import 'package:my_flutter_app/classes/attraction.dart';
import 'package:my_flutter_app/layouts/attpage.dart';

class AttCard extends StatelessWidget {
  final Attraction attraction;

  const AttCard({Key? key, required this.attraction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(18.0),
      elevation: 50.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(attraction.imgPath),
          ListTile(
            leading: const Icon(
              Icons.museum, color: Colors.blue,
              size: 24.0,
            ),

            title: Text(attraction.label, style: const TextStyle(fontSize: 18.0, color: Colors.black87),),
            subtitle: Text(attraction.location, style: const TextStyle(fontSize: 12.0, color: Colors.black45),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              TextButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100.0, 24.0),
                  primary: Colors.white,
                  elevation: 4.0
                ), child: const Text('Webpage', style: TextStyle(fontSize: 12.0, color: Colors.blue),)
              ),

              TextButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AttPage(attraction: attraction))
                );
              },
                style: ElevatedButton.styleFrom(primary: Colors.blue, elevation: 4.0, fixedSize: const Size(100.0, 24.0)),
                child: const Text('Details', style: TextStyle(fontSize: 12.0, color: Colors.white),),
              )
            ],
          )
        ],
      ),
    );
  }
}
