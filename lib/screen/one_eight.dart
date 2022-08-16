import 'package:flutter/material.dart';
import 'package:worldcupforcast/models/country_model.dart';
import 'package:worldcupforcast/models/gropuoftwo.dart';

class OneEight extends StatelessWidget {
  OneEight({Key? key}) : super(key: key);

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
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 6;
    final double itemWidth = size.width / 2;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          itemCount: groups.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: (itemWidth / itemHeight),
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 12.0),
          itemBuilder: (BuildContext context, int index) {
            return Container(
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
            );
          }),
    );
  }
}
