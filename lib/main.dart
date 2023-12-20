import "package:flutter/material.dart";
import "package:first_app/widgets/gradient_container.dart";

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body:
          GradientContainer(const [Colors.deepOrange, Colors.deepOrangeAccent]),
    ),
  ));
}
