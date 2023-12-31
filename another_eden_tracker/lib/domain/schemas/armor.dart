import 'package:isar/isar.dart';

part 'armor.g.dart';

@collection
class Armor {
  Id? id = Isar.autoIncrement;
  String? name;
  String? type;
  int? enhancement;
  int? owned;
}
