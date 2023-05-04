import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  Random number = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('LOTTERY APP')),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.yellow,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = number.nextInt(10);
            setState(() {

            });
          },
          splashColor: Colors.yellowAccent,
          backgroundColor: Colors.deepPurple,
          child: Icon(
            Icons.refresh_outlined,
            color: Colors.yellowAccent,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'the lottery number is 9',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: x == 9 ? Colors.greenAccent:Colors.redAccent.withOpacity(.3),
              ),
              child: x == 9 ?
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.done_outline_sharp,
                    color: Colors.green,
                    size: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'It is your lucky day \n WOW!! You won \n THANKS FOR PLAYING',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),
                  )
                ],
              ) : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.error_outline,
                    color: Colors.redAccent,
                    size: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Unlucky!! \n your lottery number is $x \n Try Again',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
