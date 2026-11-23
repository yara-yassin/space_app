import 'package:flutter/material.dart';

import '../../core/shared_widgets/custom_app_bar.dart';
import '../../core/theming/colors/space_app_colors.dart';
import '../../models/planet_model.dart';
import '../widgets/planet_modal_viewer.dart';
import '../widgets/planet_info_row.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final Planet planet;

  const PlanetDetailsScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SpaceAppColors.background,

      appBar: ExploreAppBar(appBarText: planet.name, isDetails: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                planet.tagline,
                style: const TextStyle(
                  color: SpaceAppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              PlanetModelViewer(planet: planet),
              const SizedBox(height: 12),
              Text(
                'About',
                style: TextStyle(
                  color: SpaceAppColors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                planet.about,
                style: const TextStyle(
                  color: SpaceAppColors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 25),

              Text(
                'Planet Information',
                style: TextStyle(
                  color: SpaceAppColors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              PlanetInfoRow(
                title: 'Distance from Sun',
                value: planet.distanceFromSun,
              ),

              PlanetInfoRow(title: 'Length of Day', value: planet.lengthOfDay),

              PlanetInfoRow(
                title: 'Orbital Period',
                value: planet.orbitalPeriod,
              ),

              PlanetInfoRow(title: 'Radius', value: planet.radius),

              PlanetInfoRow(title: 'Mass', value: planet.mass),

              PlanetInfoRow(title: 'Gravity', value: planet.gravity),

              PlanetInfoRow(title: 'Surface Area', value: planet.surfaceArea),
            ],
          ),
        ),
      ),
    );
  }
}
