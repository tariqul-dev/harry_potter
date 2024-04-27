import 'package:flutter/material.dart';

import '../../../widgets/custom_text.dart';

class InfoTableWidget extends StatelessWidget {
  final String title;
  final String? value;

  const InfoTableWidget({
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
        children: [
          CustomText(text: title),
          CustomText(
            text: value ?? "",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
