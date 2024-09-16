import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Correctly passing key to super

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key})
      : super(key: key); // Correctly passing key to super

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to MyApp!'),
            ElevatedButton(
              onPressed: () {
                print('Button pressed!');
              },
              child: Text('Click Me'),
            ),
            Image.network(
              'https://images.unsplash.com/photo-1719937206168-f4c829152b91?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              scale: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}
