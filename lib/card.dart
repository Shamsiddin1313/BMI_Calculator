import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  final int? height;
  final Function(double)? onChanged;
  const Cards({Key? key, this.onChanged, this.height}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 35, right: 35),
      height: 190,
      width: 334,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.indigo.shade700),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "HEIGHT",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                widget.height.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 25),
              ),
              const Text(
                "cm",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Slider(
            value: widget.height!.toDouble(),
            min: 120.0,
            max: 220.0,
            onChanged: widget.onChanged,
          )
        ],
      ),
    );
  }
}
