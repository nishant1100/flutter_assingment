// import 'package:mobile_project/view/Arithmetic.dart';
// import 'package:mobile_project/view/first_view.dart';
import 'package:flutter/material.dart';
import 'package:first_assingment/view/dashboard_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
