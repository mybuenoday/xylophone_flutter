import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const XylophoneApp(),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: keyboard('C', Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: keyboard('D', Colors.orange),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: keyboard('E', Colors.yellow),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: keyboard('F', Colors.green),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48.0),
            child: keyboard('G', Colors.blue),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 56.0),
            child: keyboard('A', const Color.fromARGB(255, 10, 49, 68)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64.0),
            child: keyboard('B', Colors.purple),
          ),
        ],
      ),
    );
  }

  Widget keyboard(String text, Color color) {
    return Container(
        width: 50,
        height: double.infinity,
        color: color,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ));
  }
}
