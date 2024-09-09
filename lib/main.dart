import 'package:flutter/material.dart';
import 'package:music_app/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  double _duration = 0;
  double _musicDuration = 231;

  @override
  Widget build(BuildContext context) {
    String imageLink = "";

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                SizedBox(
                    height: 300,
                    child: Image.asset(
                        "images/theweeknd.jpg"),),
              ],
            ),
            Row(
              children: [
                Text('Starboy',
                    style: TextStyle(fontSize: 75, fontWeight: FontWeight.w900, color: Colors.grey),),
              ],
            ),
            Text('The Weeknd',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600,color: Colors.grey)),
            Slider(
              divisions: _musicDuration.round(),
              activeColor: Colors.blueGrey,
              //o que já passou
              inactiveColor: Colors.grey,
              // o que ainda não passou
              //secondaryActiveColor: Colors.blue, // as divisions que já passaram
              thumbColor: Colors.black,
              //a bolinha
              value: _duration.toDouble(),
              min: 0,
              max: 100,
              //label: "$_duration",
              //divisions: 50,
              onChanged: (double newRating) {
                setState(() => _duration = newRating);
              },
              allowedInteraction: SliderInteraction.tapAndSlide,
            ),
            Icon(
              Icons.pause_circle_outline_rounded,color: Colors.grey,
              size: 80,
            ),
            Text(
              Utils.formatTimeMMSS(_duration.round()) + ' / ' + Utils.formatTimeMMSS( _musicDuration.round()),
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
