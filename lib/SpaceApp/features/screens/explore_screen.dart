import 'package:flutter/material.dart';
import 'package:space_app/SpaceApp/features/screens/planet_details_screen.dart';

import '../../core/shared_widgets/custom_app_bar.dart';
import '../../core/shared_widgets/custom_elevated_button.dart';
import '../../core/theming/colors/space_app_colors.dart';
import '../../data/planet_data.dart';
import '../widgets/circle_arrow_button.dart';
import '../widgets/planet_image.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  static String routeName = 'explore_screen';

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int currentIndex = 0;

  late final PageController pageController;

  @override
  void initState() {
    super.initState();

    pageController = PageController(initialPage: currentIndex);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void go(int index) {
    int nextIndex = index % planets.length;

    pageController.animateToPage(
      nextIndex,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final planet = planets[currentIndex];

    return Scaffold(
      backgroundColor: SpaceAppColors.background,
      appBar: const ExploreAppBar(appBarText: 'Explore'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          child: Column(
            spacing: 20,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemCount: planets.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return AnimatedBuilder(
                      animation: pageController,
                      builder: (context, child) {
                        double page = currentIndex.toDouble();

                        if (pageController.hasClients &&
                            pageController.position.haveDimensions) {
                          page = pageController.page ?? page;
                        }

                        final difference = (page - index).abs();

                        final t = (1 - difference).clamp(0.0, 1.0);

                        return Center(
                          child: Transform.scale(
                            scale: 0.55 + (0.45 * t),
                            child: Opacity(
                              opacity: 0.5 + (0.5 * t),
                              child: child,
                            ),
                          ),
                        );
                      },
                      child: PlanetImage(planet: planets[index]),
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleArrowButton(
                    icon: Icons.arrow_back,
                    onPressed: () => go(currentIndex - 1),
                  ),

                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: Text(
                      planet.name,
                      key: ValueKey(planet.name),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: SpaceAppColors.white,
                      ),
                    ),
                  ),

                  CircleArrowButton(
                    icon: Icons.arrow_forward,
                    onPressed: () => go(currentIndex + 1),
                  ),
                ],
              ),

              CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PlanetDetailsScreen(
                          planet: planets[currentIndex],
                        );
                      },
                    ),
                  );
                },
                buttonText: 'Explore ${planet.name}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
