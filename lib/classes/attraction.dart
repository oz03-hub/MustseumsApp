import 'package:flutter/material.dart';

class Attraction {
  String label;
  String location;
  String information;
  double rating;
  String imgPath;

  late List<AttComment> comments;

  Attraction(this.label, this.location, this.information, this.rating, this.imgPath);
}

class AttComment {
  String comment;
  TimeOfDay stamp;

  AttComment(this.comment, this.stamp);
}
