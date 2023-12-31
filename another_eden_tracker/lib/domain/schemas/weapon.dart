import 'package:isar/isar.dart';

part 'weapon.g.dart';

@collection
class Weapon {
  Id? id = Isar.autoIncrement;
  String? name;
  String? type;
  int? enhancement;
  int? owned;
}
