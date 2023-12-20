import "package:flutter/material.dart";

class TextWidget extends StatelessWidget {
  const TextWidget(this.text, {key}) : super(key: key);

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 24),
    );
  }
}
