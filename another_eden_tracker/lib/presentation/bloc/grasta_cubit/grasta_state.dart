part of 'grasta_cubit.dart';

class GrastaState extends Equatable {
  final List<Grasta> grastas;
  final int id;
  final String name;
  final String tier;
  final String type;
  final String element;
  final String weapon;
  final String main;
  final String sub;
  final String enhancement;
  final int owned;

  const GrastaState({
    this.grastas = const [],
    this.id = -1,
    this.name = '',
    this.tier = '',
    this.type = '',
    this.element = '',
    this.weapon = '',
    this.main = '',
    this.sub = '',
    this.enhancement = '',
    this.owned = 0,
  });

  GrastaState copyWith({
    List<Grasta>? grastas,
    int? id,
    String? name,
    String? tier,
    String? type,
    String? element,
    String? weapon,
    String? main,
    String? sub,
    String? enhancement,
    int? owned,
  }) =>
      GrastaState(
        grastas: grastas ?? this.grastas,
        id: id ?? this.id,
        name: name ?? this.name,
        tier: tier ?? this.tier,
        type: type ?? this.type,
        element: element ?? this.element,
        weapon: weapon ?? this.weapon,
        main: main ?? this.main,
        sub: sub ?? this.sub,
        enhancement: enhancement ?? this.enhancement,
        owned: owned ?? this.owned,
      );

  @override
  List<Object> get props => [
        grastas,
        id,
        name,
        tier,
        type,
        element,
        weapon,
        main,
        sub,
        enhancement,
        owned,
      ];
}
