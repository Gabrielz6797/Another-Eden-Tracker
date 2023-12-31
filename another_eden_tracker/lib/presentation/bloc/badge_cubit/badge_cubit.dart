import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:another_eden_tracker/domain/schemas.dart';
import 'package:another_eden_tracker/infrastructure/database/isar_service.dart';

part 'badge_state.dart';

class BadgeCubit extends Cubit<BadgeState> {
  final isarService = IsarService();

  BadgeCubit() : super(const BadgeState());

  Future<void> addBadge(Badge badge) async {
    isarService.addBadge(badge);
  }

  Future<void> getBadges() async {
    List<Badge> badges = await isarService.getBadges();
    emit(state.copyWith(badges: badges));
  }

  Future<void> getBadge(int id) async {
    Badge? badge = await isarService.getBadge(id);
    if (badge == null) return;
    emit(
      state.copyWith(
        id: badge.id,
        name: badge.name,
        main: badge.main,
        sub: badge.sub,
        mainlvl: badge.mainlvl,
        sublvl: badge.sublvl,
        owned: badge.owned,
      ),
    );
  }

  Future<void> deleteBadge(int id) async {
    isarService.deleteBadge(id);
  }
}
