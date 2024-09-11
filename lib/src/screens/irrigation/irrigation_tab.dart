import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/theme.dart';
import '../../screens/irrigation/components/daily_irrigation_detail_appbar.dart';
import '../../screens/plants/components/plant_tile.dart';
import '../../config/app_data.dart';

class IrrigationTab extends StatelessWidget {
  const IrrigationTab({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          const DailyIrrigationDetailAppbar(),
          SliverPadding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 30,
              right: 30,
            ),
            sliver: SliverToBoxAdapter(
              child: ListTile(
                trailing: IconButton(
                  iconSize: 36,
                  icon: const Icon(Icons.add_rounded),
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      CustomColors.secondary,
                    ),
                    iconColor: const WidgetStatePropertyAll(
                      Colors.white,
                    ),
                    minimumSize: const WidgetStatePropertyAll(
                      Size(20, 20),
                    ),
                  ),
                ),
                title: Text(
                  'Minhas plantas'.toUpperCase(),
                  style: GoogleFonts.oswald(
                    color: CustomColors.secondary,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  'Você possui ${myPlantsList.length} plantas',
                  style: GoogleFonts.oswald(
                    color: CustomColors.terciary.withOpacity(.8),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(30),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => PlantTile(
                imageUrl: myPlantsList[index].imageUrl,
                tileBackground: CustomColors.secondary.withOpacity(.5),
              ),
              itemCount: myPlantsList.length,
            ),
          ),
        ],
      ),
    );
  }
}
