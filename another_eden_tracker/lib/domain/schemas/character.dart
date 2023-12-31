import 'package:isar/isar.dart';

part 'character.g.dart';

@collection
class Character {
  Id? id = Isar.autoIncrement;
  String? name;
  String? weapon;
  String? armor;
  List<String>? types;
  bool? owned;
}
