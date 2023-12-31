// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grasta.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGrastaCollection on Isar {
  IsarCollection<Grasta> get grastas => this.collection();
}

const GrastaSchema = CollectionSchema(
  name: r'Grasta',
  id: 5574238680987196575,
  properties: {
    r'element': PropertySchema(
      id: 0,
      name: r'element',
      type: IsarType.string,
    ),
    r'enhancement': PropertySchema(
      id: 1,
      name: r'enhancement',
      type: IsarType.string,
    ),
    r'main': PropertySchema(
      id: 2,
      name: r'main',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'owned': PropertySchema(
      id: 4,
      name: r'owned',
      type: IsarType.long,
    ),
    r'sub': PropertySchema(
      id: 5,
      name: r'sub',
      type: IsarType.string,
    ),
    r'tier': PropertySchema(
      id: 6,
      name: r'tier',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 7,
      name: r'type',
      type: IsarType.string,
    ),
    r'weapon': PropertySchema(
      id: 8,
      name: r'weapon',
      type: IsarType.string,
    )
  },
  estimateSize: _grastaEstimateSize,
  serialize: _grastaSerialize,
  deserialize: _grastaDeserialize,
  deserializeProp: _grastaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _grastaGetId,
  getLinks: _grastaGetLinks,
  attach: _grastaAttach,
  version: '3.1.0+1',
);

int _grastaEstimateSize(
  Grasta object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.element;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.enhancement;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.main;
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
    final value = object.sub;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tier;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
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

void _grastaSerialize(
  Grasta object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.element);
  writer.writeString(offsets[1], object.enhancement);
  writer.writeString(offsets[2], object.main);
  writer.writeString(offsets[3], object.name);
  writer.writeLong(offsets[4], object.owned);
  writer.writeString(offsets[5], object.sub);
  writer.writeString(offsets[6], object.tier);
  writer.writeString(offsets[7], object.type);
  writer.writeString(offsets[8], object.weapon);
}

Grasta _grastaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Grasta();
  object.element = reader.readStringOrNull(offsets[0]);
  object.enhancement = reader.readStringOrNull(offsets[1]);
  object.id = id;
  object.main = reader.readStringOrNull(offsets[2]);
  object.name = reader.readStringOrNull(offsets[3]);
  object.owned = reader.readLongOrNull(offsets[4]);
  object.sub = reader.readStringOrNull(offsets[5]);
  object.tier = reader.readStringOrNull(offsets[6]);
  object.type = reader.readStringOrNull(offsets[7]);
  object.weapon = reader.readStringOrNull(offsets[8]);
  return object;
}

P _grastaDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _grastaGetId(Grasta object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _grastaGetLinks(Grasta object) {
  return [];
}

void _grastaAttach(IsarCollection<dynamic> col, Id id, Grasta object) {
  object.id = id;
}

extension GrastaQueryWhereSort on QueryBuilder<Grasta, Grasta, QWhere> {
  QueryBuilder<Grasta, Grasta, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GrastaQueryWhere on QueryBuilder<Grasta, Grasta, QWhereClause> {
  QueryBuilder<Grasta, Grasta, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Grasta, Grasta, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterWhereClause> idBetween(
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

extension GrastaQueryFilter on QueryBuilder<Grasta, Grasta, QFilterCondition> {
  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'element',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'element',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'element',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'element',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'element',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'element',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'element',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'element',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'element',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'element',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'element',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> elementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'element',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'enhancement',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'enhancement',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enhancement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'enhancement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'enhancement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'enhancement',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'enhancement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'enhancement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'enhancement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'enhancement',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enhancement',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> enhancementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'enhancement',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'main',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'main',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'main',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'main',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'main',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> mainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'main',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> ownedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'owned',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> ownedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'owned',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> ownedEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'owned',
        value: value,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> ownedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'owned',
        value: value,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> ownedLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'owned',
        value: value,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> ownedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'owned',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sub',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sub',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sub',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sub',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sub',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> subIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sub',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tier',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tier',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tier',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tier',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tier',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> tierIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tier',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weapon',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weapon',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponEqualTo(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponGreaterThan(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponLessThan(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponBetween(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponStartsWith(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponEndsWith(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponContains(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponMatches(
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

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weapon',
        value: '',
      ));
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterFilterCondition> weaponIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weapon',
        value: '',
      ));
    });
  }
}

extension GrastaQueryObject on QueryBuilder<Grasta, Grasta, QFilterCondition> {}

extension GrastaQueryLinks on QueryBuilder<Grasta, Grasta, QFilterCondition> {}

extension GrastaQuerySortBy on QueryBuilder<Grasta, Grasta, QSortBy> {
  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'element', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByElementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'element', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByEnhancement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enhancement', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByEnhancementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enhancement', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByMain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'main', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByMainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'main', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByOwned() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owned', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByOwnedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owned', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortBySub() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sub', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortBySubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sub', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByTier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tier', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByTierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tier', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByWeapon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weapon', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> sortByWeaponDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weapon', Sort.desc);
    });
  }
}

extension GrastaQuerySortThenBy on QueryBuilder<Grasta, Grasta, QSortThenBy> {
  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'element', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByElementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'element', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByEnhancement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enhancement', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByEnhancementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enhancement', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByMain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'main', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByMainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'main', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByOwned() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owned', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByOwnedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owned', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenBySub() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sub', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenBySubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sub', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByTier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tier', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByTierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tier', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByWeapon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weapon', Sort.asc);
    });
  }

  QueryBuilder<Grasta, Grasta, QAfterSortBy> thenByWeaponDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weapon', Sort.desc);
    });
  }
}

extension GrastaQueryWhereDistinct on QueryBuilder<Grasta, Grasta, QDistinct> {
  QueryBuilder<Grasta, Grasta, QDistinct> distinctByElement(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'element', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Grasta, Grasta, QDistinct> distinctByEnhancement(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enhancement', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Grasta, Grasta, QDistinct> distinctByMain(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'main', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Grasta, Grasta, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Grasta, Grasta, QDistinct> distinctByOwned() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'owned');
    });
  }

  QueryBuilder<Grasta, Grasta, QDistinct> distinctBySub(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sub', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Grasta, Grasta, QDistinct> distinctByTier(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tier', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Grasta, Grasta, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Grasta, Grasta, QDistinct> distinctByWeapon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weapon', caseSensitive: caseSensitive);
    });
  }
}

extension GrastaQueryProperty on QueryBuilder<Grasta, Grasta, QQueryProperty> {
  QueryBuilder<Grasta, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Grasta, String?, QQueryOperations> elementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'element');
    });
  }

  QueryBuilder<Grasta, String?, QQueryOperations> enhancementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enhancement');
    });
  }

  QueryBuilder<Grasta, String?, QQueryOperations> mainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'main');
    });
  }

  QueryBuilder<Grasta, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Grasta, int?, QQueryOperations> ownedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'owned');
    });
  }

  QueryBuilder<Grasta, String?, QQueryOperations> subProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sub');
    });
  }

  QueryBuilder<Grasta, String?, QQueryOperations> tierProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tier');
    });
  }

  QueryBuilder<Grasta, String?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<Grasta, String?, QQueryOperations> weaponProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weapon');
    });
  }
}
