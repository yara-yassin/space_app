import 'package:flutter/material.dart';


import '../../core/shared_widgets/custom_elevated_button.dart';
import '../../core/theming/colors/space_app_colors.dart';
import 'explore_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static String routeName = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SpaceAppColors.background,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/imgs/Login.png",
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ExploreScreen.routeName);
                  },
                  buttonText: "Explore",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
