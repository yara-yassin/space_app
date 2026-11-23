import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:space_app/SpaceApp/core/theming/colors/space_app_colors.dart';

import '../../models/planet_model.dart';

class PlanetModelViewer extends StatelessWidget {
  final Planet planet;

  const PlanetModelViewer({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ModelViewer(
        key: ValueKey(planet.model),
        src: planet.model,
        alt: '${planet.name} 3D Model',
        autoRotate: true,
        cameraControls: true,
        backgroundColor: SpaceAppColors.transparent,
        disableZoom: false,
      ),
    );
  }
}
