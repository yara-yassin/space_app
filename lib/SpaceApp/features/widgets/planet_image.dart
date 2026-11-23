
import 'package:flutter/material.dart';
import 'package:space_app/SpaceApp/core/theming/colors/space_app_colors.dart';

import '../../models/planet_model.dart';

class PlanetImage extends StatelessWidget {
  final Planet planet;

  const PlanetImage({
    super.key,
    required this.planet,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Image.asset(
        planet.image,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return Center(
            child: Text(
              'Image not found\n${planet.name}',
              textAlign: TextAlign.center,
              style:  TextStyle(
                color: SpaceAppColors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
