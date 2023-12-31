part of 'armor_cubit.dart';

class ArmorState extends Equatable {
  final List<Armor> armors;
  final int id;
  final String name;
  final String type;
  final int enhancement;
  final int owned;

  const ArmorState({
    this.armors = const [],
    this.id = -1,
    this.name = '',
    this.type = '',
    this.enhancement = 0,
    this.owned = 0,
  });

  ArmorState copyWith({
    List<Armor>? armors,
    int? id,
    String? name,
    String? type,
    int? enhancement,
    int? owned,
  }) =>
      ArmorState(
        armors: armors ?? this.armors,
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        enhancement: enhancement ?? this.enhancement,
        owned: owned ?? this.owned,
      );

  @override
  List<Object> get props => [
        armors,
        id,
        name,
        type,
        enhancement,
        owned,
      ];
}
