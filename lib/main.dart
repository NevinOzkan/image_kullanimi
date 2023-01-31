import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String resimAdi = "köfte.jpeg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Images/$resimAdi"),
            ElevatedButton(
              child: Text("Resim 1"),
              onPressed: () {
                setState(() {
                  resimAdi = "köfte.jpeg";
                });
              },
            ),
            ElevatedButton(
              child: Text("Resim 2"),
              onPressed: () {
                setState(() {
                  resimAdi = "makarna.jpeg";
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
