import 'package:flutter/material.dart';
import 'package:worldcupforcast/models/country_model.dart';
import 'package:worldcupforcast/models/group_model.dart';

class AllGroups extends StatelessWidget {
  AllGroups({Key? key}) : super(key: key);

  final groups = <Group>[
    const Group(
        symbol: "A",
        name: "Group A",
        countryA: Country(name: "Quatar", flageImage: "assets/qatar.png"),
        countryB: Country(name: "Ecuador", flageImage: "assets/ecuador.png"),
        countryC: Country(name: "Senegal", flageImage: "assets/senegal.png"),
        countryD:
            Country(name: "Netherlands", flageImage: "assets/netherlands.png")),
    const Group(
        symbol: "B",
        name: "Group B",
        countryA: Country(name: "Quatar", flageImage: "assets/qatar.png"),
        countryB: Country(name: "Ecuador", flageImage: "assets/ecuador.png"),
        countryC: Country(name: "Senegal", flageImage: "assets/senegal.png"),
        countryD:
            Country(name: "Netherlands", flageImage: "assets/netherlands.png")),
    const Group(
        symbol: "C",
        name: "Group C",
        countryA: Country(name: "Quatar", flageImage: "assets/qatar.png"),
        countryB: Country(name: "Ecuador", flageImage: "assets/ecuador.png"),
        countryC: Country(name: "Senegal", flageImage: "assets/senegal.png"),
        countryD:
            Country(name: "Netherlands", flageImage: "assets/netherlands.png")),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: groups.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(53, 52, 59, 1),
              borderRadius: BorderRadius.circular(9)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  groups[index].name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 4.0),
                    child: Container(
                      height: 20,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text(
                            "${groups[index].symbol}1",
                            style: const TextStyle(color: Colors.black),
                          ),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 4.0),
                    child: Container(
                      height: 20,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text(
                            "${groups[index].symbol}2",
                            style: const TextStyle(color: Colors.black),
                          ),
                          Image.asset(groups[index].countryB.flageImage),
                          Text(
                            groups[index].countryB.name,
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
                          Text(
                            "${groups[index].symbol}3",
                            style: const TextStyle(color: Colors.black),
                          ),
                          Image.asset(groups[index].countryC.flageImage),
                          Text(
                            groups[index].countryC.name,
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
                          Text(
                            "${groups[index].symbol}4",
                            style: const TextStyle(color: Colors.black),
                          ),
                          Image.asset(groups[index].countryD.flageImage),
                          Text(
                            groups[index].countryD.name,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
