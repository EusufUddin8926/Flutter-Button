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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green
  );

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Button Demo"),
     ),
     body: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         TextButton(onPressed: (){}, child: Text("Text Button")),
         ElevatedButton(onPressed: (){}, child: Text("Text Button")),
         OutlinedButton(onPressed: (){}, child: Text("Text Button")),

       ],
     ),
   );
  }


}
