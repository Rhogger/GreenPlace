import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/theme.dart';
import '../../../screens/plants/components/plant_tile.dart';
import '../../../config/app_data.dart';

class DailyIrrigationDetailAppbar extends StatelessWidget {
  const DailyIrrigationDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverAppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      expandedHeight: size.height / 2.5,
      backgroundColor: Colors.white,
      elevation: 0.0,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            color: CustomColors.secondary,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
                // horizontal: 30,
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: SafeArea(
                    child: Text(
                      'Rega de hoje'.toUpperCase(),
                      style: GoogleFonts.oswald(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 24,
                    bottom: 48,
                  ),
                  height: 240,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    itemBuilder: (_, index) => PlantTile(
                      imageUrl: allPlantsList[index].imageUrl,
                      tileBackground: Colors.white54,
                    ),
                    separatorBuilder: (_, index) => const SizedBox(
                      height: 36,
                      width: 36,
                    ),
                    itemCount: allPlantsList.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          height: 32.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          child: Container(
            width: 60.0,
            height: 5.0,
            decoration: BoxDecoration(
              color: CustomColors.terciary.withOpacity(.4),
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
      ),
    );
  }
}
