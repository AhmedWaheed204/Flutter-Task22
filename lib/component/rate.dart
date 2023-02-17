// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  const Rate({super.key, required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Let the ListView know how many items it needs to build.
      itemCount: count,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        return Icon(
          Icons.star,
          size: 10,
          color: Colors.yellow,
        );
      },
    );
  }
}
