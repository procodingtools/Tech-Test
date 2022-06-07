import 'package:flutter/material.dart';

class TextPaire extends StatelessWidget {
  const TextPaire({Key? key, required this.title, this.value, this.textScale = 1.0}) : super(key: key);

  final String title;
  final String? value;
  final double textScale;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textScaleFactor: textScale,
      text: TextSpan(children: [
        TextSpan(
            text: '$title: ',
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)),
        TextSpan(text: value ?? 'N/A', style: const TextStyle(color: Colors.black)),
      ]),
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
    );
  }
}
