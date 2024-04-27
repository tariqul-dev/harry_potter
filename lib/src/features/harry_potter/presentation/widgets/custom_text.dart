import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final int maxLines;

  const CustomText(
      {required this.text, this.textStyle, this.maxLines = 2, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ?? Theme.of(context).textTheme.titleMedium,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
