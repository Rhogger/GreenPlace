import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitanda/src/config/theme.dart';
import 'package:kitanda/src/screens/plants/components/plant_tile.dart';

class PlantsTab extends StatelessWidget {
  PlantsTab({super.key});

  final List<String> plants = [
    "assets/images/plants/plant_1.png",
    "assets/images/plants/plant_2.png",
    "assets/images/plants/plant_3.png",
    "assets/images/plants/plant_4.png",
    "assets/images/plants/plant_5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Plantas'.toUpperCase(),
          style: GoogleFonts.oswald(
            color: CustomColors.secondary,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 18,
          bottom: 6,
        ),
        child: Column(
          children: [
            TextFormField(
              cursorColor: Colors.white.withOpacity(.7),
              style: GoogleFonts.oswald(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                fillColor: CustomColors.secondary,
                filled: true,
                hintText: 'Pesquisar...',
                hintStyle: GoogleFonts.oswald(
                  color: Colors.white.withOpacity(.7),
                  fontSize: 16,
                ),
                isDense: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(
                vertical: 48,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pesquisa Recentes'.toUpperCase(),
                    style: GoogleFonts.oswald(
                      color: CustomColors.secondary,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 24, bottom: 48),
                    height: 240,
                    child: ListView.separated(
                      itemBuilder: (_, index) => PlantTile(
                        imageUrl: plants[index],
                      ),
                      separatorBuilder: (_, index) => const SizedBox(
                        height: 40,
                        width: 40,
                      ),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
