import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:another_eden_tracker/domain/schemas.dart';
import 'package:another_eden_tracker/infrastructure/database/isar_service.dart';

part 'weapon_state.dart';

class WeaponCubit extends Cubit<WeaponState> {
  final isarService = IsarService();

  WeaponCubit() : super(const WeaponState());

  Future<void> addWeapon(Weapon weapon) async {
    isarService.addWeapon(weapon);
  }

  Future<void> getWeapons() async {
    List<Weapon> weapons = await isarService.getWeapons();
    emit(state.copyWith(weapons: weapons));
  }

  Future<void> getWeapon(int id) async {
    Weapon? weapon = await isarService.getWeapon(id);
    if (weapon == null) return;
    emit(
      state.copyWith(
        id: weapon.id,
        name: weapon.name,
        type: weapon.type,
        enhancement: weapon.enhancement,
        owned: weapon.owned,
      ),
    );
  }

  Future<void> deleteWeapon(int id) async {
    isarService.deleteWeapon(id);
  }
}
