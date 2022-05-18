import 'package:flutter/material.dart';

class CaclCard extends StatefulWidget {
  final Color? colour;
  final String? title;

  const CaclCard({
    Key? key,
    required this.colour,
    required this.title,
  }) : super(key: key);

  @override
  State<CaclCard> createState() => _CaclCardState();
}

class _CaclCardState extends State<CaclCard> {
  int weight = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 40),
      width: 135,
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: widget.colour),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              widget.title!,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            weight.toString(),
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    weight--;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  margin: const EdgeInsets.only(left: 20),
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Icon(
                    Icons.minimize,
                    size: 25,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    weight++;
                  });
                },
                child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.add,
                      color: Colors.blue.shade900,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
