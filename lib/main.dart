import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('InkWell, response'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                splashColor: Colors.yellow,
                highlightColor: Colors.blue.withOpacity(0.5),
                child: const Icon(Icons.add_circle, size: 50),
                onTap: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
              Text(_count.toString(), style: const TextStyle(fontSize: 50)),
            ],
          ),
        ),
      ),
    );
  }
}
