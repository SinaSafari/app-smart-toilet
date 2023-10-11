import 'package:flutter/material.dart';
import 'package:smart_toilet/strings.dart';

class MoreWaterScreen extends StatelessWidget {
  const MoreWaterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xffC3A22B),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(Strings.moreWaterTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              SizedBox(
                height: 10,
              ),
              Text(
                Strings.moreWaterDescription,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
