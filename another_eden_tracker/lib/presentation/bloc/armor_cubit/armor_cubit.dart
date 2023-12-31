import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:another_eden_tracker/domain/schemas.dart';
import 'package:another_eden_tracker/infrastructure/database/isar_service.dart';

part 'armor_state.dart';

class ArmorCubit extends Cubit<ArmorState> {
  final isarService = IsarService();

  ArmorCubit() : super(const ArmorState());

  Future<void> addArmor(Armor armor) async {
    isarService.addArmor(armor);
  }

  Future<void> getArmors() async {
    List<Armor> armors = await isarService.getArmors();
    emit(state.copyWith(armors: armors));
  }

  Future<void> getArmor(int id) async {
    Armor? armor = await isarService.getArmor(id);
    if (armor == null) return;
    emit(
      state.copyWith(
        id: armor.id,
        name: armor.name,
        type: armor.type,
        enhancement: armor.enhancement,
        owned: armor.owned,
      ),
    );
  }

  Future<void> deleteArmor(int id) async {
    isarService.deleteArmor(id);
  }
}
