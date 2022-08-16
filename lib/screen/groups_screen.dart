import 'package:flutter/material.dart';
import 'package:worldcupforcast/screen/all_groups_screen.dart';
import 'package:worldcupforcast/screen/final.dart';
import 'package:worldcupforcast/screen/one_eight.dart';
import 'package:worldcupforcast/screen/one_four.dart';
import 'package:worldcupforcast/screen/one_two.dart';

class GroupsScreen extends StatefulWidget {
  const GroupsScreen({Key? key}) : super(key: key);

  @override
  State<GroupsScreen> createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {
  int intialIndex = 0;
  final pages =  [AllGroups(), OneEight(), OneFour(),OneTwo(),Final()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(131, 11, 3, 1),
      ),
      body: Column(
        children: [
          Container(
            height: 10,
            color: const Color.fromRGBO(255, 185, 0, 1),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        intialIndex = 0;
                      });
                    },
                    child: Container(
                      height: 33,
                      width: 60,
                      decoration: BoxDecoration(
                        color: intialIndex == 0
                            ? const Color.fromRGBO(255, 185, 0, 1)
                            : const Color.fromRGBO(131, 11, 3, 1),
                      ),
                      child: const Center(
                        child: Text(
                          "Groups",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        intialIndex = 1;
                      });
                    },
                    child: Container(
                      height: 33,
                      width: 60,
                      decoration: BoxDecoration(
                        color: intialIndex == 1
                            ? const Color.fromRGBO(255, 185, 0, 1)
                            : const Color.fromRGBO(131, 11, 3, 1),
                      ),
                      child: const Center(
                        child: Text(
                          "1/8",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        intialIndex = 2;
                      });
                    },
                    child: Container(
                      height: 33,
                      width: 60,
                      decoration: BoxDecoration(
                        color: intialIndex == 2
                            ? const Color.fromRGBO(255, 185, 0, 1)
                            : const Color.fromRGBO(131, 11, 3, 1),
                      ),
                      child: const Center(
                        child: Text(
                          "1/4",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        intialIndex = 3;
                      });
                    },
                    child: Container(
                      height: 33,
                      width: 60,
                      decoration: BoxDecoration(
                        color: intialIndex == 3
                            ? const Color.fromRGBO(255, 185, 0, 1)
                            : const Color.fromRGBO(131, 11, 3, 1),
                      ),
                      child: const Center(
                        child: Text(
                          "1/2",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        intialIndex = 4;
                      });
                    },
                    child: Container(
                      height: 33,
                      width: 60,
                      decoration: BoxDecoration(
                        color: intialIndex == 4
                            ? const Color.fromRGBO(255, 185, 0, 1)
                            : const Color.fromRGBO(131, 11, 3, 1),
                      ),
                      child: const Center(
                        child: Text(
                          "Final",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: pages[intialIndex],
          )
        ],
      ),
    );
  }
}
