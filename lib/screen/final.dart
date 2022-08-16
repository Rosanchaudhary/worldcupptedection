import 'package:flutter/material.dart';
import 'package:worldcupforcast/models/country_model.dart';
import 'package:worldcupforcast/models/gropuoftwo.dart';

class Final extends StatelessWidget {
  Final({Key? key}) : super(key: key);

  final groups = <GroupOfTwo>[
    const GroupOfTwo(
        countryA: Country(name: "Quatar", flageImage: "assets/qatar.png"),
        countryB: Country(name: "Ecuador", flageImage: "assets/ecuador.png")),
    const GroupOfTwo(
        countryA: Country(name: "Quatar", flageImage: "assets/qatar.png"),
        countryB: Country(name: "Ecuador", flageImage: "assets/ecuador.png")),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Final",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 8.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(53, 52, 59, 1),
                borderRadius: BorderRadius.circular(9)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 2.0, horizontal: 4.0),
                  child: Container(
                    height: 20,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Image.asset(groups[0].countryA.flageImage),
                        Text(
                          groups[0].countryA.name,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 2.0, horizontal: 4.0),
                  child: Container(
                    height: 20,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Image.asset(groups[1].countryB.flageImage),
                        Text(
                          groups[1].countryB.name,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Text(
          "#3",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 8.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(53, 52, 59, 1),
                borderRadius: BorderRadius.circular(9)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 2.0, horizontal: 4.0),
                  child: Container(
                    height: 20,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Image.asset(groups[0].countryA.flageImage),
                        Text(
                          groups[0].countryA.name,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 2.0, horizontal: 4.0),
                  child: Container(
                    height: 20,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Image.asset(groups[1].countryB.flageImage),
                        Text(
                          groups[1].countryB.name,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
