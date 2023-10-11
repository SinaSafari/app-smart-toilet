import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_toilet/strings.dart';
import 'package:dio/dio.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fullNameConttoller = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    fullNameConttoller.dispose();
    ageController.dispose();
    genderController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text(
              Strings.registerTitle,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
              textAlign: TextAlign.end,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              Strings.registerDescription,
              textAlign: TextAlign.end,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              Strings.firstLastNameLable,
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                controller: fullNameConttoller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: Strings.firstLastNamePlaceholder,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              Strings.ageLable,
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                controller: ageController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: Strings.agePlaceholder,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              Strings.genderLable,
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                controller: genderController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: Strings.genderPlaceholder,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text(Strings.rgisterBtnLabel),
              onPressed: () async {
                // final dio = Dio();
                // await dio.post("https://smarttoilet.com/api/v1/auth/register");
                context.push("/noInfo");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
          ],
        ),
      ),
    ));
  }
}
