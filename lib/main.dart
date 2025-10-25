import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: "Multi bahasa",
      home: const MyHome(),
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
        actions: const [
          Icon(Icons.settings, color: Colors.black),
          SizedBox(width: 10),
          Icon(
            Icons.battery_full_outlined,
            size: 24.0,
            color: Color.fromARGB(255, 51, 255, 0),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 22, 243, 1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text("kontener 1"),
              ),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 66, 1, 243),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text("kontener 2",
                    style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 0, 0),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("kontener 3",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsetsDirectional.only(start: 20, top: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 0, 234),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text("اسمي إلهام",
                    style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsetsDirectional.only(start: 20, top: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 238, 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text("اسمي إلهام",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0))),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Dialog Contoh'),
                        content: const Text(
                            'Perhatikan bahasa tombol dibawah!'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("OK"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Cancel"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text("tampilkan Dialog"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
