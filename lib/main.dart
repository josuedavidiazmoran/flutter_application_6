import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.red;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedContainer'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Container(
                  width: _width,
                  height: _height,
                  decoration:
                      BoxDecoration(color: _color, borderRadius: _borderRadius),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Cambiar Container"))
          ],
        ),
      ),
    );
  }
}
