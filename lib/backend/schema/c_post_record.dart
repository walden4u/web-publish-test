import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'c_post_record.g.dart';

abstract class CPostRecord implements Built<CPostRecord, CPostRecordBuilder> {
  static Serializer<CPostRecord> get serializer => _$cPostRecordSerializer;

  @BuiltValueField(wireName: 'DTitle')
  String? get dTitle;

  @BuiltValueField(wireName: 'DDescription')
  String? get dDescription;

  @BuiltValueField(wireName: 'DImageUrl')
  String? get dImageUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CPostRecordBuilder builder) => builder
    ..dTitle = ''
    ..dDescription = ''
    ..dImageUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CPost');

  static Stream<CPostRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CPostRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CPostRecord._();
  factory CPostRecord([void Function(CPostRecordBuilder) updates]) =
      _$CPostRecord;

  static CPostRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCPostRecordData({
  String? dTitle,
  String? dDescription,
  String? dImageUrl,
}) {
  final firestoreData = serializers.toFirestore(
    CPostRecord.serializer,
    CPostRecord(
      (c) => c
        ..dTitle = dTitle
        ..dDescription = dDescription
        ..dImageUrl = dImageUrl,
    ),
  );

  return firestoreData;
}
