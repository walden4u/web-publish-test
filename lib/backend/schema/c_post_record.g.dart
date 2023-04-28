// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'c_post_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CPostRecord> _$cPostRecordSerializer = new _$CPostRecordSerializer();

class _$CPostRecordSerializer implements StructuredSerializer<CPostRecord> {
  @override
  final Iterable<Type> types = const [CPostRecord, _$CPostRecord];
  @override
  final String wireName = 'CPostRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CPostRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dTitle;
    if (value != null) {
      result
        ..add('DTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dDescription;
    if (value != null) {
      result
        ..add('DDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dImageUrl;
    if (value != null) {
      result
        ..add('DImageUrl')
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
  CPostRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CPostRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'DTitle':
          result.dTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DDescription':
          result.dDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DImageUrl':
          result.dImageUrl = serializers.deserialize(value,
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

class _$CPostRecord extends CPostRecord {
  @override
  final String? dTitle;
  @override
  final String? dDescription;
  @override
  final String? dImageUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CPostRecord([void Function(CPostRecordBuilder)? updates]) =>
      (new CPostRecordBuilder()..update(updates))._build();

  _$CPostRecord._({this.dTitle, this.dDescription, this.dImageUrl, this.ffRef})
      : super._();

  @override
  CPostRecord rebuild(void Function(CPostRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CPostRecordBuilder toBuilder() => new CPostRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CPostRecord &&
        dTitle == other.dTitle &&
        dDescription == other.dDescription &&
        dImageUrl == other.dImageUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dTitle.hashCode);
    _$hash = $jc(_$hash, dDescription.hashCode);
    _$hash = $jc(_$hash, dImageUrl.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CPostRecord')
          ..add('dTitle', dTitle)
          ..add('dDescription', dDescription)
          ..add('dImageUrl', dImageUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CPostRecordBuilder implements Builder<CPostRecord, CPostRecordBuilder> {
  _$CPostRecord? _$v;

  String? _dTitle;
  String? get dTitle => _$this._dTitle;
  set dTitle(String? dTitle) => _$this._dTitle = dTitle;

  String? _dDescription;
  String? get dDescription => _$this._dDescription;
  set dDescription(String? dDescription) => _$this._dDescription = dDescription;

  String? _dImageUrl;
  String? get dImageUrl => _$this._dImageUrl;
  set dImageUrl(String? dImageUrl) => _$this._dImageUrl = dImageUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CPostRecordBuilder() {
    CPostRecord._initializeBuilder(this);
  }

  CPostRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dTitle = $v.dTitle;
      _dDescription = $v.dDescription;
      _dImageUrl = $v.dImageUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CPostRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CPostRecord;
  }

  @override
  void update(void Function(CPostRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CPostRecord build() => _build();

  _$CPostRecord _build() {
    final _$result = _$v ??
        new _$CPostRecord._(
            dTitle: dTitle,
            dDescription: dDescription,
            dImageUrl: dImageUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
