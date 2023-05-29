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
  Random random = Random();

  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title:const Center(child: Text('Lottry App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: Text('your winning number is 4',style:TextStyle(color:Colors.white, fontSize: 20),)),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: x == 4 ? 500 : 250,
              width: 300,
              decoration: BoxDecoration(
                color: x == 4 ? Colors.black54: Colors.black12,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.green,
                            size: 35,
                          ),
                        const  SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Congratulation you are winner, your winning number is  $x\n',style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,

                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                       const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 35,
                          ),
                         const SizedBox(
                            height: 15,
                          ),
                          Text(

                              'good luck for next your number is $x\n try again',
                              textAlign: TextAlign.center,

                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueGrey,
          onPressed: () {
            x = random.nextInt(10);
            print(x);
            setState(() {});
          },
          child: const Icon(Icons.refresh,),
        ),
      ),
    );
  }
}
