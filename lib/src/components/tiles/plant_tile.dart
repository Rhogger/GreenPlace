import 'package:flutter/material.dart';

class PlantTile extends StatelessWidget {
  final String imageUrl;
  final Color tileBackground;

  const PlantTile(
      {super.key, required this.imageUrl, required this.tileBackground});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: tileBackground,
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
