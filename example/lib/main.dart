import 'package:flutter/material.dart';
import 'package:flutter_shallow_blue/flutter_shallow_blue.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FlutterShallowBlue flutterShallowBlue = FlutterShallowBlue();
  String result = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  void test() {
    String res = FlutterShallowBlue.bridge.getTemperature().toString();
    setState(() {
      result = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            Text("Result: " + result),
            TextButton(
              onPressed: test,
              child: Text("Test")
            ),
          ],
        ),
      ),
    );
  }
}
