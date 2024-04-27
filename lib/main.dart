import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injection_container.dart';
import 'src/core/routes/route_generator.dart';
import 'src/features/harry_potter/presentation/bloc/character_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();

  runApp(const HarryPotterApp());
}

class HarryPotterApp extends StatelessWidget {
  const HarryPotterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharacterBloc>(
      create: (context) => sl<CharacterBloc>(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Harry Potter",
        onGenerateRoute: RouteGenerator.generatedRoute,
      ),
    );
  }
}
