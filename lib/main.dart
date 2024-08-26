import 'package:flutter/material.dart';

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
      theme: ThemeData(
      ),
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
  double duration=0;
  @override
  Widget build(BuildContext context) {
    String imageLink = "";



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
                height: 300,
                child: Image.network(
                    "https://pbs.twimg.com/media/FTm0CdcX0AENo8w?format=jpg&name=360x360")),

            Text('Starboy',
                style: TextStyle(fontSize: 75, fontWeight: FontWeight.w900)),
            Text('The Weeknd',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),

            Slider(

              activeColor: Colors.indigo[900] , //o que já passou
              inactiveColor: Colors.blueGrey, // o que ainda não passou
              //secondaryActiveColor: Colors.blue, // as divisions que já passaram
              thumbColor: Colors.blue[900], //a bolinha
              value: duration.toDouble(),
              min: 0,
              max: 100,
              label: "$duration",
              //divisions: 50,
              onChanged: (double newRating) {
                setState(() => duration = newRating);},
              allowedInteraction: SliderInteraction.tapAndSlide,
            ),
            Icon(Icons.pause_circle_outline_rounded, size: 80,),
            Text(
            duration.toString(),style: TextStyle(fontWeight: FontWeight.w600),
            ),
              ],

        ),
      ),
    );
  }
}
