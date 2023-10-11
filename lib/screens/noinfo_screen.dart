import 'package:flutter/material.dart';
import 'package:smart_toilet/strings.dart';

class NoInfoScreen extends StatelessWidget {
  const NoInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Strings.noInfo,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ],
      )),
    );
  }
}
