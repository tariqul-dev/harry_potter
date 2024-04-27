import '../../domain/entities/wand.dart';

class WandModel extends Wand {
  const WandModel({
    required super.wood,
    required super.core,
    required super.length,
  });

  factory WandModel.fromJson(dynamic json) {
    return WandModel(
      wood: json['wood'],
      core: json['core'],
      length: json['length'],
    );
  }

  WandModel copyWith({
    String? wood,
    String? core,
    num? length,
  }) =>
      WandModel(
        wood: wood ?? this.wood,
        core: core ?? this.core,
        length: length ?? this.length,
      );
}
