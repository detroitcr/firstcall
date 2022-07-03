import 'package:flutter/material.dart';
import 'package:practice/api_data_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              'API call practice'.toUpperCase(),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, (MaterialPageRoute(builder: ((context) {
                  return const ApiDataScreen();
                }))));
              },
              child: Text(
                'Api data '.toUpperCase(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
