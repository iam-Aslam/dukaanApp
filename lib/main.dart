import 'package:flutter/material.dart';
import 'package:ui/pages/home.dart';
import 'package:ui/pages/pagefive.dart';
import 'package:ui/pages/pagefour.dart';
import 'package:ui/pages/pageone.dart';
import 'package:ui/pages/pagesix.dart';
import 'package:ui/pages/pagethree.dart';
import 'package:ui/pages/pagetwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const home(),
      routes: {
        'firstpage': (context) {
          return const pageone();
        },
        'secondpage': (context) {
          return const Store();
        },
        'thirdpage': (context) {
          return const pagethree();
        },
        'fourthpage': ((context) {
          return const pagefour();
        }),
        'fifthpage': ((context) {
          return const fifthpage();
        }),
        'sixthpage': ((context) {
          return const sixthpage();
        })
      },
    );
  }
}
