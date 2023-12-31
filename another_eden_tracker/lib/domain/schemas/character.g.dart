// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCharacterCollection on Isar {
  IsarCollection<Character> get characters => this.collection();
}

const CharacterSchema = CollectionSchema(
  name: r'Character',
  id: 4658184409279959047,
  properties: {
    r'armor': PropertySchema(
      id: 0,
      name: r'armor',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'owned': PropertySchema(
      id: 2,
      name: r'owned',
      type: IsarType.bool,
    ),
    r'types': PropertySchema(
      id: 3,
      name: r'types',
      type: IsarType.stringList,
    ),
    r'weapon': PropertySchema(
      id: 4,
      name: r'weapon',
      type: IsarType.string,
    )
  },
  estimateSize: _characterEstimateSize,
  serialize: _characterSerialize,
  deserialize: _characterDeserialize,
  deserializeProp: _characterDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _characterGetId,
  getLinks: _characterGetLinks,
  attach: _characterAttach,
  version: '3.1.0+1',
);

int _characterEstimateSize(
  Character object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.armor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.types;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.weapon;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _characterSerialize(
  Character object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.armor);
  writer.writeString(offsets[1], object.name);
  writer.writeBool(offsets[2], object.owned);
  writer.writeStringList(offsets[3], object.types);
  writer.writeString(offsets[4], object.weapon);
}

Character _characterDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Character();
  object.armor = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.name = reader.readStringOrNull(offsets[1]);
  object.owned = reader.readBoolOrNull(offsets[2]);
  object.types = reader.readStringList(offsets[3]);
  object.weapon = reader.readStringOrNull(offsets[4]);
  return object;
}

P _characterDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _characterGetId(Character object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _characterGetLinks(Character object) {
  return [];
}

void _characterAttach(IsarCollection<dynamic> col, Id id, Character object) {
  object.id = id;
}

extension CharacterQueryWhereSort
    on QueryBuilder<Character, Character, QWhere> {
  QueryBuilder<Character, Character, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CharacterQueryWhere
    on QueryBuilder<Character, Character, QWhereClause> {
  QueryBuilder<Character, Character, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Character, Character, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CharacterQueryFilter
    on QueryBuilder<Character, Character, QFilterCondition> {
  QueryBuilder<Character, Character, QAfterFilterCondition> armorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'armor',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> armorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'armor',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> armorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'armor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> armorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'armor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> armorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'armor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> armorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'armor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> armorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'armor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> armorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'armor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> armorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'armor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> armorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'armor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> armorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'armor',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> armorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'armor',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> ownedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'owned',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> ownedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'owned',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> ownedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'owned',
        value: value,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> typesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'types',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> typesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'types',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> typesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      typesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      typesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> typesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'types',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      typesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      typesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      typesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> typesElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'types',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      typesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'types',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      typesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'types',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> typesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> typesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> typesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> typesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      typesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> typesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weapon',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weapon',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weapon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weapon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weapon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weapon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weapon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weapon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weapon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weapon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weapon',
        value: '',
      ));
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> weaponIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weapon',
        value: '',
      ));
    });
  }
}

extension CharacterQueryObject
    on QueryBuilder<Character, Character, QFilterCondition> {}

extension CharacterQueryLinks
    on QueryBuilder<Character, Character, QFilterCondition> {}

extension CharacterQuerySortBy on QueryBuilder<Character, Character, QSortBy> {
  QueryBuilder<Character, Character, QAfterSortBy> sortByArmor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armor', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByArmorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armor', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByOwned() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owned', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByOwnedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owned', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByWeapon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weapon', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> sortByWeaponDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weapon', Sort.desc);
    });
  }
}

extension CharacterQuerySortThenBy
    on QueryBuilder<Character, Character, QSortThenBy> {
  QueryBuilder<Character, Character, QAfterSortBy> thenByArmor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armor', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByArmorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'armor', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByOwned() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owned', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByOwnedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owned', Sort.desc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByWeapon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weapon', Sort.asc);
    });
  }

  QueryBuilder<Character, Character, QAfterSortBy> thenByWeaponDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weapon', Sort.desc);
    });
  }
}

extension CharacterQueryWhereDistinct
    on QueryBuilder<Character, Character, QDistinct> {
  QueryBuilder<Character, Character, QDistinct> distinctByArmor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'armor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByOwned() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'owned');
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByTypes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'types');
    });
  }

  QueryBuilder<Character, Character, QDistinct> distinctByWeapon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weapon', caseSensitive: caseSensitive);
    });
  }
}

extension CharacterQueryProperty
    on QueryBuilder<Character, Character, QQueryProperty> {
  QueryBuilder<Character, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Character, String?, QQueryOperations> armorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'armor');
    });
  }

  QueryBuilder<Character, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Character, bool?, QQueryOperations> ownedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'owned');
    });
  }

  QueryBuilder<Character, List<String>?, QQueryOperations> typesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'types');
    });
  }

  QueryBuilder<Character, String?, QQueryOperations> weaponProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weapon');
    });
  }
}
