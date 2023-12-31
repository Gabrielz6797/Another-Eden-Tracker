import 'package:isar/isar.dart';

part 'grasta.g.dart';

@collection
class Grasta {
  Id? id = Isar.autoIncrement;
  String? name;
  String? tier;
  String? type;
  String? element;
  String? weapon;
  String? main;
  String? sub;
  String? enhancement;
  int? owned;
}
