// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "latihan minggu ke 5",
      home: MyHome(),
    );
}
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("week 5"),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          Icon(Icons.settings, color: Colors.black),
          SizedBox( width: 10),
          const Icon(
                        Icons.battery_full_outlined,
                        size: 24.0,
                        color: Color.fromARGB(255, 51, 255, 0),
                      ),
                     SizedBox(width: 15,)
          
        ],
      ),
      body: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 22, 243, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text("kontener 1"),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 1, 243),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text("kontener 1",style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
    );
  }
}