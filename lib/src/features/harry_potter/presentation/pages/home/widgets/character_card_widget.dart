import 'package:flutter/material.dart';

import '../../../../domain/entities/character.dart';
import '../../../widgets/custom_network_image.dart';
import '../../../widgets/custom_text.dart';

class CharacterCardBodyWidget extends StatelessWidget {
  final Character character;

  const CharacterCardBodyWidget({
    required this.character,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  child: character.image == null || character.image!.isEmpty
                      ? Image.asset("assets/images/img.png")
                      : CustomNetworkImage(
                          imageUrl: character.image ?? "",
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: character.name ?? "",
                      ),
                      CustomText(
                        text: character.actor ?? "",
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 1,
                      ),
                      CustomText(
                        text: character.house ?? "",
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
