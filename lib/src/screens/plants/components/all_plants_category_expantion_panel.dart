import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitanda/src/config/app_data.dart';

import '../../../components/tiles/plant_tile.dart';
import '../../../config/theme.dart';

class AllPlantsCategoryExpansionPanel extends StatefulWidget {
  const AllPlantsCategoryExpansionPanel({
    super.key,
  });

  @override
  State<AllPlantsCategoryExpansionPanel> createState() =>
      _AllPlantsCategoryExpansionPanelState();
}

class _AllPlantsCategoryExpansionPanelState
    extends State<AllPlantsCategoryExpansionPanel> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: ListTile(
        title: Text("Todas as plantas".toUpperCase()),
        titleTextStyle: GoogleFonts.oswald(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: EdgeInsets.zero,
      ),
      tilePadding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      enableFeedback: true,
      backgroundColor: CustomColors.secondary,
      collapsedBackgroundColor: CustomColors.secondary,
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
      textColor: Colors.white,
      collapsedTextColor: Colors.white,
      children: [
        SizedBox(
          height: 240,
          child: ListView.separated(
            padding: const EdgeInsets.only(
              top: 24,
              bottom: 48,
              right: 30,
              left: 30,
            ),
            itemBuilder: (_, index) => PlantTile(
              imageUrl: allPlantsList[index].imageUrl,
              tileBackground: CustomColors.terciary.withOpacity(.3),
            ),
            separatorBuilder: (_, index) => const SizedBox(
              height: 40,
              width: 40,
            ),
            itemCount: allPlantsList.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
