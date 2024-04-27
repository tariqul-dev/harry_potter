import 'package:flutter/material.dart';

import '../../features/harry_potter/domain/entities/character.dart';
import '../../features/harry_potter/presentation/pages/details/details.dart';
import '../../features/harry_potter/presentation/pages/home/home.dart';

class RouteGenerator {
  static Route<dynamic?> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeName:
        {
          return MaterialPageRoute(
            builder: (_) => const Home(),
          );
        }

      case Details.routeName:
        {
          final Character character = settings.arguments as Character;
          return MaterialPageRoute(
            builder: (context) => Details(character: character),
          );
        }

      default:
        {
          return MaterialPageRoute(
            builder: (context) => const Scaffold(
              body: Center(
                child: Text("Error Route"),
              ),
            ),
          );
        }
    }
  }
}
