import 'package:flutter/material.dart';
import '../utils/constants.dart';

class LoadingApp extends StatelessWidget {
  const LoadingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator(color: kPrimaryColor)),
    );
  }
}
