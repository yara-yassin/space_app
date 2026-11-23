import 'package:flutter/material.dart';

import 'SpaceApp/features/screens/explore_screen.dart';
import 'SpaceApp/features/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.routeName,

      routes: {
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        ExploreScreen.routeName: (context) => ExploreScreen(),
      },
    );
  }
}
