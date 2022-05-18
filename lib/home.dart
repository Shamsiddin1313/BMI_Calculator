import 'package:bmi_calculator/calculationCard.dart';
import 'package:bmi_calculator/card.dart';
import 'package:bmi_calculator/genderCard.dart';
import 'package:bmi_calculator/logic.dart';
import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'calculationCard.dart';

final activeCardColor = Colors.blue.shade500;
final inactiveCardColor = Colors.blue.shade900;

enum Gender {
  male,
  female,
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

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
              height: 30,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: Containers(
                    name: "FEMALE",
                    icon: Icons.female_rounded,
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    onPress: () {
                      selectedGender = Gender.female;
                    },
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Containers(
                      name: "MALE",
                      icon: Icons.male_rounded,
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      onPress: () {
                        selectedGender = Gender.male;
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 65,
            ),
            Cards(
              height: height,
              onChanged: (double newValue) {
                height = newValue.round();
                setState(() {});
              },
            ),
            const SizedBox(
              height: 65,
            ),
            Row(
              children: [
                CaclCard(
                  colour: inactiveCardColor,
                  title: 'WEIGHT',
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: CaclCard(
                    colour: inactiveCardColor,
                    title: 'AGE',
                  ),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                CalcLogic calc = CalcLogic(
                  height: height,
                  weight: weight,
                );

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Result(
                    bmiResult: calc.calcBMI().toString(),
                    interpretation: calc.getResult(),
                    resultText: calc.getInterpretion(),
                  );
                }));
              },
              child: Container(
                width: double.infinity,
                height: 70,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
