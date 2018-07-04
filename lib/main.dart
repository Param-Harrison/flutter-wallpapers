import 'package:flutter/material.dart';
import 'package:wallpapers/screens/main.dart';

class Application extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new MaterialApp(
            title: 'Flutter Demo',
            theme: new ThemeData(
                primarySwatch: Colors.grey,
//                canvasColor: Colors.black,
            ),
            home: new HomeScreen(title: 'Wallpapers'),
        );
    }
}

void main() => runApp(new Application());