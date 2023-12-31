part of 'weapon_cubit.dart';

class WeaponState extends Equatable {
  final List<Weapon> weapons;
  final int id;
  final String name;
  final String type;
  final int enhancement;
  final int owned;

  const WeaponState({
    this.weapons = const [],
    this.id = -1,
    this.name = '',
    this.type = '',
    this.enhancement = 0,
    this.owned = 0,
  });

  WeaponState copyWith({
    List<Weapon>? weapons,
    int? id,
    String? name,
    String? type,
    int? enhancement,
    int? owned,
  }) =>
      WeaponState(
        weapons: weapons ?? this.weapons,
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        enhancement: enhancement ?? this.enhancement,
        owned: owned ?? this.owned,
      );

  @override
  List<Object> get props => [
        weapons,
        id,
        name,
        type,
        enhancement,
        owned,
      ];
}
