import 'package:isar/isar.dart';
import 'package:another_eden_tracker/domain/schemas.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationCacheDirectory();
      return await Isar.open(
        [ArmorSchema, BadgeSchema, CharacterSchema, GrastaSchema, WeaponSchema],
        directory: dir.path,
      );
    }
    return await Future.value(Isar.getInstance());
  }

  Future<void> addArmor(Armor armor) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.armors.put(armor);
    });
  }

  Future<List<Armor>> getArmors() async {
    final isar = await db;
    return await isar.armors.where().sortByName().findAll();
  }

  Future<Armor?> getArmor(int id) async {
    final isar = await db;
    return await isar.armors.get(id);
  }

  void deleteArmor(int id) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.armors.delete(id);
    });
  }

  Future<void> addBadge(Badge badge) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.badges.put(badge);
    });
  }

  Future<List<Badge>> getBadges() async {
    final isar = await db;
    return await isar.badges.where().sortByName().findAll();
  }

  Future<Badge?> getBadge(int id) async {
    final isar = await db;
    return await isar.badges.get(id);
  }

  void deleteBadge(int id) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.badges.delete(id);
    });
  }

  Future<void> addCharacter(Character character) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.characters.put(character);
    });
  }

  Future<List<Character>> getCharacters() async {
    final isar = await db;
    return await isar.characters.where().sortByName().findAll();
  }

  Future<Character?> getCharacter(int id) async {
    final isar = await db;
    return await isar.characters.get(id);
  }

  void deleteCharacter(int id) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.characters.delete(id);
    });
  }

  Future<void> addGrasta(Grasta grasta) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.grastas.put(grasta);
    });
  }

  Future<List<Grasta>> getGrastas() async {
    final isar = await db;
    return await isar.grastas.where().sortByName().findAll();
  }

  Future<Grasta?> getGrasta(int id) async {
    final isar = await db;
    return await isar.grastas.get(id);
  }

  void deleteGrasta(int id) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.grastas.delete(id);
    });
  }

  Future<void> addWeapon(Weapon weapon) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.weapons.put(weapon);
    });
  }

  Future<List<Weapon>> getWeapons() async {
    final isar = await db;
    return await isar.weapons.where().sortByName().findAll();
  }

  Future<Weapon?> getWeapon(int id) async {
    final isar = await db;
    return await isar.weapons.get(id);
  }

  void deleteWeapon(int id) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.weapons.delete(id);
    });
  }
}
