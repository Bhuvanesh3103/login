import 'package:flutter/material.dart';
import 'package:login/Botnavi.dart';
import 'package:login/bottom.dart';
import 'package:login/description.dart';
import 'package:login/ecommerce.dart';
import 'package:login/home.dart';
import 'package:login/log.dart';
import 'package:login/logg.dart';
import 'package:login/logi.dart';
import 'package:login/login.dart';
import 'package:login/profile.dart';
import 'package:login/task3.dart';
import 'package:login/validate.dart';
import 'package:login/validation.dart';
import 'package:login/visibility.dart';
import 'package:login/visible.dart';

import 'demo.dart';

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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:description(),
    );
  }
}

