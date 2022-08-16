import 'package:flutter/material.dart';
import 'package:worldcupforcast/screen/groups_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(131, 11, 3, 1),
        actions: [
          Image.asset(
            "assets/info_icon.png",
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(131, 11, 3, 1),
            ),
            child: const Center(
              child: Text(
                "Cup Forecasts 2023",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 10,
            color: const Color.fromRGBO(255, 185, 0, 1),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GroupsScreen()));
                  },
                  child: Container(
                    height: 60,
                    width: 280,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 185, 0, 1),
                    ),
                    child: const Center(
                      child: Text(
                        "New cup predict",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 280,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 185, 0, 1),
                  ),
                  child: const Center(
                    child: Text(
                      "My predictions",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
            color: const Color.fromRGBO(255, 185, 0, 1),
          ),
          Container(
            height: 90,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(131, 11, 3, 1),
            ),
          ),
        ],
      ),
    );
  }
}
