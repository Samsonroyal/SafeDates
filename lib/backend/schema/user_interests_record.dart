import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_interests_record.g.dart';

abstract class UserInterestsRecord
    implements Built<UserInterestsRecord, UserInterestsRecordBuilder> {
  static Serializer<UserInterestsRecord> get serializer =>
      _$userInterestsRecordSerializer;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  String? get interests;

  @BuiltValueField(wireName: 'favourite_food')
  String? get favouriteFood;

  bool? get petlover;

  @BuiltValueField(wireName: 'pet_type')
  String? get petType;

  @BuiltValueField(wireName: 'visited_places')
  String? get visitedPlaces;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(UserInterestsRecordBuilder builder) => builder
    ..userName = ''
    ..interests = ''
    ..favouriteFood = ''
    ..petlover = false
    ..petType = ''
    ..visitedPlaces = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_interests')
          : FirebaseFirestore.instance.collectionGroup('user_interests');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('user_interests').doc();

  static Stream<UserInterestsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserInterestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserInterestsRecord._();
  factory UserInterestsRecord(
          [void Function(UserInterestsRecordBuilder) updates]) =
      _$UserInterestsRecord;

  static UserInterestsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserInterestsRecordData({
  String? userName,
  String? interests,
  String? favouriteFood,
  bool? petlover,
  String? petType,
  String? visitedPlaces,
}) {
  final firestoreData = serializers.toFirestore(
    UserInterestsRecord.serializer,
    UserInterestsRecord(
      (u) => u
        ..userName = userName
        ..interests = interests
        ..favouriteFood = favouriteFood
        ..petlover = petlover
        ..petType = petType
        ..visitedPlaces = visitedPlaces,
    ),
  );

  return firestoreData;
}
