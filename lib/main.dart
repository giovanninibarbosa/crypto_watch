import 'package:crypto_watch/app/home/controller/CryptoHomePage.dart';
import 'package:crypto_watch/app/home/di/CryptoHomeBindings.dart';
import 'package:flutter/material.dart';

void main() async {
  CryptoHomeBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CryptoHomePage(),
    );
  }
}
