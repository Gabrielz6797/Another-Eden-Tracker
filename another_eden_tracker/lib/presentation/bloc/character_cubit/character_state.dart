part of 'character_cubit.dart';

class CharacterState extends Equatable {
  final List<Character> characters;
  final int id;
  final String name;
  final String weapon;
  final String armor;
  final List<String> types;
  final bool owned;

  const CharacterState({
    this.characters = const [],
    this.id = -1,
    this.name = '',
    this.weapon = '',
    this.armor = '',
    this.types = const [],
    this.owned = false,
  });

  CharacterState copyWith({
    List<Character>? characters,
    int? id,
    String? name,
    String? weapon,
    String? armor,
    List<String>? types,
    bool? owned,
  }) =>
      CharacterState(
        characters: characters ?? this.characters,
        id: id ?? this.id,
        name: name ?? this.name,
        weapon: weapon ?? this.weapon,
        armor: armor ?? this.armor,
        types: types ?? this.types,
        owned: owned ?? this.owned,
      );

  @override
  List<Object> get props => [
        characters,
        id,
        name,
        weapon,
        armor,
        types,
        owned,
      ];
}
