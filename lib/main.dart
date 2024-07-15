import 'package:flutter/material.dart';
import 'Proyectos/infinite_list/lib/main.dart' as infinite_list;
import 'Proyectos/animations/lib/main.dart' as animations;
import 'Proyectos/simplistic_editor/lib/main.dart' as simplistic_editor;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Proyectos de Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => infinite_list.MyApp()),
                );
              },
              child: Text('Infinite List'),
            ),
            SizedBox(height: 20), // Espacio vertical entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => animations.AnimationSamples()),
                );
              },
              child: Text('Animations'),
            ),
            SizedBox(height: 20), // Espacio vertical entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => simplistic_editor.MyApp()),
                );
              },
              child: Text('Simplistic Editor'),
            ),
          ],
        ),
      ),
    );
  }
}