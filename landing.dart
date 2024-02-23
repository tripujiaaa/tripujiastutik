import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TalkDM',
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
      backgroundColor: Color.fromARGB(255, 250, 227, 146),
      body: Container(
        margin: EdgeInsets.fromLTRB(
          0,
          0,
          0,
          0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'TalkDM',
              style: TextStyle(
                fontSize: 64,
                fontFamily: 'Hurricane-Regular',
              ),
            ),
            const SizedBox(
              height: 70.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.translate(
                  offset: const Offset(40.0, 10.0),
                  child: Image.asset(
                    'asset/elek.png',
                    height: 86,
                    width: 83,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-5.0, -30.0),
                  child: Image.asset(
                    'asset/Object 2 1.png',
                    height: 86,
                    width: 83,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 90.0,
            ),
            Text(
              "Let's talk with new friends",
              style: TextStyle(
                fontFamily: 'IbarraRealNova-Regular',
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                'Get Started',
                style: TextStyle(fontFamily: 'IbarraRealNova-Regular'),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 76, 144, 78),
                onPrimary: Color.fromARGB(255, 241, 202, 59),
                padding: EdgeInsets.symmetric(horizontal: 103, vertical: 15),
                textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
