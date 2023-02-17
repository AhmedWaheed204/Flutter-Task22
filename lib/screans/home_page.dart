// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/Second.dart';
import 'package:flutter_application_1/component/custom_card.dart';
import 'package:flutter_application_1/component/custom_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 85, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Home", size: 40),
                CircleAvatar(
                  maxRadius: 30,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Colors.black, Colors.grey]),
              ),
              child: Text(
                "Rate Your games",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(text: "Recent Games", size: 25),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              //width: 200,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                CardGame(
                  image: AssetImage("assets/images/walker.jpg"),
                  text1: 'OutLast',
                ),
                CardGame(
                  image: AssetImage("assets/images/cola.jpg"),
                  text1: 'OutLast',
                ),
                CardGame(
                  image: AssetImage("assets/images/weetabix.jpg"),
                  text1: 'OutLast',
                ),
                CardGame(
                  image: AssetImage("assets/images/walker.jpg"),
                  text1: 'OutLast',
                ),
                CardGame(
                  image: AssetImage("assets/images/walker.jpg"),
                  text1: 'OutLast',
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(text: "Played this week", size: 25),
            Row(
              children: [
                Second(
                  image: AssetImage("assets/images/walker.jpg"),
                  text1: "GTA",
                  width: 150,
                  percent: '50%',
                  size: 20,
                ),
                Second(
                  image: AssetImage("assets/images/walker.jpg"),
                  text1: "GTA",
                  width: 130,
                  percent: '30%',
                  size: 20,
                ),
                Second(
                  image: AssetImage("assets/images/walker.jpg"),
                  text1: "GTA",
                  width: 85,
                  percent: '20%',
                  size: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
