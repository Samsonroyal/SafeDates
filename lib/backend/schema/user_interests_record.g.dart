// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_interests_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserInterestsRecord> _$userInterestsRecordSerializer =
    new _$UserInterestsRecordSerializer();

class _$UserInterestsRecordSerializer
    implements StructuredSerializer<UserInterestsRecord> {
  @override
  final Iterable<Type> types = const [
    UserInterestsRecord,
    _$UserInterestsRecord
  ];
  @override
  final String wireName = 'UserInterestsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserInterestsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interests;
    if (value != null) {
      result
        ..add('interests')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favouriteFood;
    if (value != null) {
      result
        ..add('favourite_food')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.petlover;
    if (value != null) {
      result
        ..add('petlover')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.petType;
    if (value != null) {
      result
        ..add('pet_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.visitedPlaces;
    if (value != null) {
      result
        ..add('visited_places')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UserInterestsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserInterestsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interests':
          result.interests = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favourite_food':
          result.favouriteFood = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'petlover':
          result.petlover = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'pet_type':
          result.petType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'visited_places':
          result.visitedPlaces = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserInterestsRecord extends UserInterestsRecord {
  @override
  final String? userName;
  @override
  final String? interests;
  @override
  final String? favouriteFood;
  @override
  final bool? petlover;
  @override
  final String? petType;
  @override
  final String? visitedPlaces;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserInterestsRecord(
          [void Function(UserInterestsRecordBuilder)? updates]) =>
      (new UserInterestsRecordBuilder()..update(updates))._build();

  _$UserInterestsRecord._(
      {this.userName,
      this.interests,
      this.favouriteFood,
      this.petlover,
      this.petType,
      this.visitedPlaces,
      this.ffRef})
      : super._();

  @override
  UserInterestsRecord rebuild(
          void Function(UserInterestsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInterestsRecordBuilder toBuilder() =>
      new UserInterestsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInterestsRecord &&
        userName == other.userName &&
        interests == other.interests &&
        favouriteFood == other.favouriteFood &&
        petlover == other.petlover &&
        petType == other.petType &&
        visitedPlaces == other.visitedPlaces &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, userName.hashCode), interests.hashCode),
                        favouriteFood.hashCode),
                    petlover.hashCode),
                petType.hashCode),
            visitedPlaces.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserInterestsRecord')
          ..add('userName', userName)
          ..add('interests', interests)
          ..add('favouriteFood', favouriteFood)
          ..add('petlover', petlover)
          ..add('petType', petType)
          ..add('visitedPlaces', visitedPlaces)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserInterestsRecordBuilder
    implements Builder<UserInterestsRecord, UserInterestsRecordBuilder> {
  _$UserInterestsRecord? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _interests;
  String? get interests => _$this._interests;
  set interests(String? interests) => _$this._interests = interests;

  String? _favouriteFood;
  String? get favouriteFood => _$this._favouriteFood;
  set favouriteFood(String? favouriteFood) =>
      _$this._favouriteFood = favouriteFood;

  bool? _petlover;
  bool? get petlover => _$this._petlover;
  set petlover(bool? petlover) => _$this._petlover = petlover;

  String? _petType;
  String? get petType => _$this._petType;
  set petType(String? petType) => _$this._petType = petType;

  String? _visitedPlaces;
  String? get visitedPlaces => _$this._visitedPlaces;
  set visitedPlaces(String? visitedPlaces) =>
      _$this._visitedPlaces = visitedPlaces;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserInterestsRecordBuilder() {
    UserInterestsRecord._initializeBuilder(this);
  }

  UserInterestsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _interests = $v.interests;
      _favouriteFood = $v.favouriteFood;
      _petlover = $v.petlover;
      _petType = $v.petType;
      _visitedPlaces = $v.visitedPlaces;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInterestsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserInterestsRecord;
  }

  @override
  void update(void Function(UserInterestsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInterestsRecord build() => _build();

  _$UserInterestsRecord _build() {
    final _$result = _$v ??
        new _$UserInterestsRecord._(
            userName: userName,
            interests: interests,
            favouriteFood: favouriteFood,
            petlover: petlover,
            petType: petType,
            visitedPlaces: visitedPlaces,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
