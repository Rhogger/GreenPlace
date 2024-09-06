import 'package:flutter/material.dart';
import 'package:kitanda/src/config/theme.dart';

class PlantTile extends StatelessWidget {
  final String imageUrl;

  const PlantTile({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: CustomColors.terciary.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
