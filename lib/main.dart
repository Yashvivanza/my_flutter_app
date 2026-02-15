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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'MyApp'),
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
  var _isreult = "Male";
    var data = "Female";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            RadioListTile(
              value: "Male",
              groupValue: _isreult,
              selected: false,
              title: const Text("Male"),
              tileColor: const Color.fromARGB(255, 255, 204, 74),
              subtitle: const Text("Gender"),
              activeColor: const Color.fromARGB(255, 93, 0, 81),
              onChanged: (value)
              {
                setState((){
                  _isreult = "Male";
                });
              }),

              RadioListTile(
              value: "Female",
              groupValue: data,
              selected: false,
              title: const Text("Female"),
              tileColor: const Color.fromARGB(255, 255, 204, 74),
               activeColor: const Color.fromARGB(255, 93, 0, 81),
              subtitle: const Text("Gender"),
              onChanged: (value)
              {
                setState((){
                  _isreult = "Female";
                });
              }),
              Text(_isreult),

          ],
        ),
      ),
    );
  }
}
