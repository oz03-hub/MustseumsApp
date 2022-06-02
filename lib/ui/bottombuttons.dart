import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildInteractiveButtons(Icons.comment, 'Comment', Colors.blue),
          _buildInteractiveButtons(Icons.map, 'Map', Colors.blue),
          _buildInteractiveButtons(Icons.share, 'Share', Colors.blue)
        ],
      ),
    );
  }

  Widget _buildInteractiveButtons(IconData icon, String label, Color color) {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          print('$label clicked on tap');
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 24.0),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: Text(label, style: TextStyle(color: color, fontSize: 18.0)),
            )
          ],
        ),
      ),
    );
  }
}
