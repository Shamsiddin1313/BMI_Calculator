import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  final String? name;
  final IconData? icon;
  final Color colour;
  final Function onPress;
  const Containers(
      {Key? key,
      required this.name,
      required this.icon,
      required this.colour,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Container(
        margin: const EdgeInsets.only(left: 40),
        width: 135,
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: colour),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 70,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              name!,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
