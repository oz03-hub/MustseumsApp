import 'package:flutter/material.dart';
import 'package:my_flutter_app/classes/attraction.dart';
import 'package:my_flutter_app/layouts/attpage.dart';
import 'package:my_flutter_app/layouts/mainpage.dart';
import 'package:my_flutter_app/ui/bottombuttons.dart';
import 'package:my_flutter_app/ui/comments.dart';
import 'package:my_flutter_app/ui/information.dart';
import 'package:my_flutter_app/ui/listui.dart';
import 'package:my_flutter_app/ui/title.ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    Attraction sample = Attraction('Pergamon Museum', 'Berlin', 'The Pergamon Museum is a listed building on the Museum Island in the historic centre of Berlin and part of the UNESCO World Heritage. It was built from 1910 to 1930 by order of German Emperor Wilhelm II according to plans by Alfred Messel and Ludwig Hoffmann in Stripped Classicism style.', 4.7, 'assets/images/Pergamonmuseum_Front.jpeg');
    Attraction sample1 = Attraction('Boston Fine Arts Museum', 'Boston', 'Huge global collection, from ancient Egyptian jewelry & Renaissance painting to contemporary pieces.', 1.7, 'assets/images/1200px-Boston_Museum_of_Fine_Artes.jpeg');
    Attraction sample2 = Attraction('Louvre Museum', 'Paris', 'The Louvre, or the Louvre Museum, is the world\'s most-visited museum, and a historic landmark in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo.', 5.0, 'assets/images/_124921984_mediaitem124921983.jpeg');

    List<Attraction> atts = [sample, sample1, sample2];

    return MaterialApp(
      home: MainPage(atts: atts,),
    );
  }
}


