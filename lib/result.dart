import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: Colors.indigo.shade700,
              title: const Center(
                child: Text(
                  "BMI Calculator",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Your Result",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, top: 50),
              height: 535,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue.shade900),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 45),
                    child: Text(
                      interpretation!,
                      style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: Colors.green),
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 115),
                    child: Text(
                      bmiResult!,
                      style: const TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      resultText!,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
