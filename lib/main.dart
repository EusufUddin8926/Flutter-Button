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
      title: 'Button Demo',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
      elevation: 6,
      shadowColor: Colors.black,
      padding: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))));

  SnakbarMsg(String msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Demo"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: () {
                SnakbarMsg("TextButton cliked", context);
              },
              child: Text("Text Button")),
          ElevatedButton(
            onPressed: () {
              SnakbarMsg("ElevatedButton cliked", context);
            },
            child: Text("ElevatedButton"),
            style: buttonStyle,
          ),
          OutlinedButton(
              onPressed: () {
                SnakbarMsg("OutlinedButton cliked", context);
              },
              child: Text("OutlinedButton")),
        ],
      ),
    );
  }
}
