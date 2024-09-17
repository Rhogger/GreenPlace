import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../../../config/theme.dart';

class PartialShadeWaveWidget extends StatelessWidget {
  const PartialShadeWaveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      waveFrequency: .6,
      config: CustomConfig(
        gradients: [
          [
            CustomColors.secondary.withOpacity(.4),
            CustomColors.primary.withOpacity(.3)
          ],
          [
            CustomColors.secondary.withOpacity(.2),
            CustomColors.primary.withOpacity(.3)
          ],
          [
            CustomColors.secondary.withOpacity(.3),
            CustomColors.primary.withOpacity(.3)
          ],
          [
            CustomColors.secondary.withOpacity(.4),
            CustomColors.primary.withOpacity(.3)
          ],
        ],
        durations: [8400, 9600, 12000, 11000],
        heightPercentages: [
          1,
          1.03,
          .9,
          .95,
        ],
      ),
      size: const Size(double.infinity, double.infinity),
    );
  }
}
