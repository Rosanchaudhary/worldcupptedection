import 'package:flutter/material.dart';
import 'package:worldcupforcast/models/country_model.dart';
import 'package:worldcupforcast/models/gropuoftwo.dart';

class OneFour extends StatelessWidget {
  OneFour({Key? key}) : super(key: key);

  final groups = <GroupOfTwo>[
    const GroupOfTwo(
        countryA: Country(name: "Quatar", flageImage: "assets/qatar.png"),
        countryB: Country(name: "Ecuador", flageImage: "assets/ecuador.png")),
    const GroupOfTwo(
        countryA: Country(name: "Quatar", flageImage: "assets/qatar.png"),
        countryB: Country(name: "Ecuador", flageImage: "assets/ecuador.png")),
    const GroupOfTwo(
        countryA: Country(name: "Quatar", flageImage: "assets/qatar.png"),
        countryB: Country(name: "Ecuador", flageImage: "assets/ecuador.png")),
    const GroupOfTwo(
        countryA: Country(name: "Quatar", flageImage: "assets/qatar.png"),
        countryB: Country(name: "Ecuador", flageImage: "assets/ecuador.png")),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groups.length,
      itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal:40.0,vertical: 8.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(53, 52, 59, 1),
              borderRadius: BorderRadius.circular(9)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                child: Container(
                  height: 20,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset(groups[index].countryA.flageImage),
                      Text(
                        groups[index].countryA.name,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                child: Container(
                  height: 20,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset(groups[index].countryB.flageImage),
                      Text(
                        groups[index].countryB.name,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
