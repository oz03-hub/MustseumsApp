import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  final String comment;
  final TimeOfDay time;
  const Comment({Key? key, required this.comment, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: Colors.white30
      ),
      padding: const EdgeInsets.only(top: 12.0, right: 8.0, left: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Column(
          children: [
            const Icon(Icons.account_box, color: Colors.grey, size: 24.0,),
            Text('You, at ${time.hour}${time.minute}', style: const TextStyle(color: Colors.black26, fontSize: 8.0),)
          ],
        ),
          Text(comment, style: const TextStyle(fontSize: 18.0),)
        ],
      ),
    );
  }
}
