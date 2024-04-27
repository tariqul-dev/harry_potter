import 'package:flutter/material.dart';

import '../../../widgets/custom_network_image.dart';

class CoverPhotoWidget extends StatelessWidget {
  final String? image;

  const CoverPhotoWidget({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          child: image == null || image!.isEmpty
              ? Image.asset("assets/images/img.png")
              : CustomNetworkImage(
                  imageUrl: image ?? "",
                  fit: BoxFit.fill,
                ),
        ),
      ),
    );
  }
}
