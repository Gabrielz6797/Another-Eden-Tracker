import 'package:isar/isar.dart';

part 'badge.g.dart';

@collection
class Badge {
  Id? id = Isar.autoIncrement;
  String? name;
  String? main;
  String? sub;
  int? mainlvl;
  int? sublvl;
  int? owned;
}
