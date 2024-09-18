import 'package:flutter/material.dart';

import '../../functions/navigate.dart';
import '../../../config/theme.dart';
import '../../../models/plant.dart';
import '../../../screens/plant/plant_screen.dart';

class PlantTile extends StatelessWidget {
  const PlantTile({
    super.key,
    required this.plant,
    required this.tileBackground,
    this.width = 120,
  });

  final PlantModel plant;
  final Color tileBackground;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        highlightColor: CustomColors.primary,
        splashColor: CustomColors.primary.withOpacity(.5),
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          navigatePush(
              context,
              PlantScreen(
                plant: plant,
              ));
        },
        child: Container(
          width: width,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: tileBackground,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Hero(
            tag: plant.imageUrl,
            child: Image(
              image: AssetImage(plant.imageUrl),
            ),
          ),
        ),
      ),
    );
  }
}
