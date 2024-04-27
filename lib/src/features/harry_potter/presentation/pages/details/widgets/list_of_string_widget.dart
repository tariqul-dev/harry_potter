import 'package:flutter/material.dart';

import '../../../widgets/custom_text.dart';

class ListOfStringWidget extends StatelessWidget {
  final String title;
  final List<String> value;

  const ListOfStringWidget({
    required this.title,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: title),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: value.map((e) => CustomText(text: e)).toList(),
          )
        ],
      ),
    );
  }
}
