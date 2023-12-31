part of 'badge_cubit.dart';

class BadgeState extends Equatable {
  final List<Badge> badges;
  final int id;
  final String name;
  final String main;
  final String sub;
  final int mainlvl;
  final int sublvl;
  final int owned;

  const BadgeState({
    this.badges = const [],
    this.id = -1,
    this.name = '',
    this.main = '',
    this.sub = '',
    this.mainlvl = 0,
    this.sublvl = 0,
    this.owned = 0,
  });

  BadgeState copyWith({
    List<Badge>? badges,
    int? id,
    String? name,
    String? main,
    String? sub,
    int? mainlvl,
    int? sublvl,
    int? owned,
  }) =>
      BadgeState(
        badges: badges ?? this.badges,
        id: id ?? this.id,
        name: name ?? this.name,
        main: main ?? this.main,
        sub: sub ?? this.sub,
        mainlvl: mainlvl ?? this.mainlvl,
        sublvl: sublvl ?? this.sublvl,
        owned: owned ?? this.owned,
      );

  @override
  List<Object> get props => [
        badges,
        id,
        name,
        main,
        sub,
        mainlvl,
        sublvl,
        owned,
      ];
}
