import 'package:flutter/material.dart';

import 'components/attribute_widget.dart';
import '../../config/padding.dart';
import '../../config/theme.dart';
import '../../enums/sunlight.dart';
import '../../enums/umidity.dart';
import '../../models/plant.dart';
import '../../components/widgets/waves/dry_wave_widget.dart';
import '../../components/widgets/waves/indirect_sunlight_wave_widget.dart';
import '../../components/widgets/waves/moist_wave_widget.dart';
import '../../components/widgets/waves/partial_shade_wave_widget.dart';
import '../../components/widgets/texts/medium_text_widget copy.dart';
import '../../components/widgets/texts/subtitle_widget.dart';
import '../../components/widgets/texts/title_widget.dart';

class PlantScreen extends StatelessWidget {
  const PlantScreen({
    super.key,
    required this.plant,
  });

  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    Color? umidityBackgroundColor;
    Color? sunlightBackgroundColor;

    StatelessWidget? umidityWaves;

    if (plant.umidity == Umidity.dry) umidityWaves = const DryWaveWidget();
    if (plant.umidity == Umidity.moist) umidityWaves = const MoistWaveWidget();
    if (plant.umidity == Umidity.wet) {
      umidityBackgroundColor = CustomColors.secondary.withOpacity(.55);
    }

    StatelessWidget? sunlightWaves;

    if (plant.sunlight == Sunlight.partialShade) {
      sunlightWaves = const PartialShadeWaveWidget();
    }
    if (plant.sunlight == Sunlight.indirectLight) {
      sunlightWaves = const IndirectSunlightWaveWidget();
    }
    if (plant.sunlight == Sunlight.fullSun) {
      sunlightBackgroundColor = CustomColors.secondary.withOpacity(.55);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 400,
                      decoration: BoxDecoration(
                        color: CustomColors.secondary,
                        borderRadius: const BorderRadiusDirectional.vertical(
                          bottom: Radius.circular(70),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: paddingLessBottom,
                      child: SafeArea(
                        child: Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Hero(
                            tag: plant.imageUrl,
                            child: Image(
                              image: AssetImage(plant.imageUrl),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: paddingLessTop,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SubTitleWidget(
                        text: plant.categories.first.readableName,
                        color: CustomColors.secondary,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TitleWidget(
                        text: plant.name,
                        color: CustomColors.secondary,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 100,
                        child: MediumTextWidget(
                          text: plant.description,
                          color: CustomColors.secondary,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      SubTitleWidget(
                        text: 'Especificidades',
                        color: CustomColors.secondary,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: SubTitleWidget(
                              text: plant.umidity.readableName,
                              color: CustomColors.secondary,
                              textAlign: TextAlign.end,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          AttributeWidget(
                            wave: umidityWaves,
                            color: umidityBackgroundColor,
                            icon: Icons.water_drop,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          AttributeWidget(
                            wave: sunlightWaves,
                            color: sunlightBackgroundColor,
                            icon: Icons.sunny,
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: SubTitleWidget(
                              text: plant.sunlight.readableName,
                              color: CustomColors.secondary,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SafeArea(
            child: BackButton(),
          )
        ],
      ),
    );
  }
}
