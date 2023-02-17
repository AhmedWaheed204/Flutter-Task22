// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custom_text.dart';

class Second extends StatelessWidget {
  const Second(
      {super.key,
      required this.image,
      required this.text1,
      required this.width,
      required this.percent,
      required this.size});
  final ImageProvider<Object> image;
  final String text1;
  final double width;
  final String percent;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.circular(20)),
      width: width,
      height: 290,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    percent,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                CustomText(text: text1, size: size),
                SizedBox(
                  height: 80,
                ),
                CustomText(text: "Played " + percent, size: 15)
              ],
            ),
          )
        ],
      ),
    );
  }
}
