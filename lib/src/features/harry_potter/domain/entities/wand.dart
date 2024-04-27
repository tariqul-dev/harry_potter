import 'package:equatable/equatable.dart';

class Wand extends Equatable {
  const Wand({
    required this.wood,
    required this.core,
    required this.length,
  });

  final String? wood;
  final String? core;
  final num? length;

  @override
  List<Object?> get props => [
        wood,
        core,
        length,
      ];
}
