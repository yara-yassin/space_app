import 'package:flutter/material.dart';

import '../../features/widgets/circle_arrow_button.dart';
import '../theming/colors/space_app_colors.dart';

class ExploreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ExploreAppBar({
    super.key,
    required this.appBarText,
    this.isDetails = false,
    this.planetName = '',
  });

  @override
  Size get preferredSize => const Size.fromHeight(240);
  final String appBarText;
  final bool isDetails;
  final String planetName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/imgs/moon.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: SpaceAppColors.backgroundGradient,
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    isDetails
                        ? Row(
                            spacing: 110,
                            children: [
                              CircleArrowButton(
                                icon: Icons.arrow_back_outlined,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              Center(
                                child: Text(
                                  appBarText,
                                  style: TextStyle(
                                    color: SpaceAppColors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Text(
                            appBarText,
                            style: TextStyle(
                              color: SpaceAppColors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    const Spacer(),

                    // Bottom Title
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: isDetails
                          ? Text(
                              planetName,
                              style: TextStyle(
                                color: SpaceAppColors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : Text(
                              'Which planet\nwould you like to explore?',
                              style: TextStyle(
                                color:  SpaceAppColors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
