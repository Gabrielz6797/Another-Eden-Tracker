import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:another_eden_tracker/domain/schemas.dart';
import 'package:another_eden_tracker/infrastructure/database/isar_service.dart';

part 'grasta_state.dart';

class GrastaCubit extends Cubit<GrastaState> {
  final isarService = IsarService();

  GrastaCubit() : super(const GrastaState());

  Future<void> addGrasta(Grasta grasta) async {
    isarService.addGrasta(grasta);
  }

  Future<void> getGrastas() async {
    List<Grasta> grastas = await isarService.getGrastas();
    emit(state.copyWith(grastas: grastas));
  }

  Future<void> getGrasta(int id) async {
    Grasta? grasta = await isarService.getGrasta(id);
    if (grasta == null) return;
    emit(
      state.copyWith(
        id: grasta.id,
        name: grasta.name,
        tier: grasta.tier,
        type: grasta.type,
        element: grasta.element,
        weapon: grasta.weapon,
        main: grasta.main,
        sub: grasta.sub,
        enhancement: grasta.enhancement,
        owned: grasta.owned,
      ),
    );
  }

  Future<void> deleteGrasta(int id) async {
    isarService.deleteGrasta(id);
  }
}
