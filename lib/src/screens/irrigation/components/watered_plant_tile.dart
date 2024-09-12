import 'package:flutter/material.dart';

import 'watered_button.dart';

class WateredPlantTile extends StatefulWidget {
  final String imageUrl;
  final Color tileBackground;

  const WateredPlantTile(
      {super.key, required this.imageUrl, required this.tileBackground});

  @override
  State<WateredPlantTile> createState() => _WateredPlantTileState();
}

class _WateredPlantTileState extends State<WateredPlantTile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 120,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: widget.tileBackground,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imageUrl),
              ),
            ),
          ),
        ),
        const Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          left: 0,
          child: WateredButton(),
        ),
      ],
    );
  }
}
