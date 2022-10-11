import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_ui/pages/dashboard.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashBoard(),
    );
  }
}
