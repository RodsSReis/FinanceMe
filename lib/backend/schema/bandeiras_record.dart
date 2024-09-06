import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BandeirasRecord extends FirestoreRecord {
  BandeirasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "CODIGO" field.
  int? _codigo;
  int get codigo => _codigo ?? 0;
  bool hasCodigo() => _codigo != null;

  // "OPERADORA" field.
  String? _operadora;
  String get operadora => _operadora ?? '';
  bool hasOperadora() => _operadora != null;

  void _initializeFields() {
    _codigo = castToType<int>(snapshotData['CODIGO']);
    _operadora = snapshotData['OPERADORA'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bandeiras');

  static Stream<BandeirasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BandeirasRecord.fromSnapshot(s));

  static Future<BandeirasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BandeirasRecord.fromSnapshot(s));

  static BandeirasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BandeirasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BandeirasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BandeirasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BandeirasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BandeirasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBandeirasRecordData({
  int? codigo,
  String? operadora,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODIGO': codigo,
      'OPERADORA': operadora,
    }.withoutNulls,
  );

  return firestoreData;
}

class BandeirasRecordDocumentEquality implements Equality<BandeirasRecord> {
  const BandeirasRecordDocumentEquality();

  @override
  bool equals(BandeirasRecord? e1, BandeirasRecord? e2) {
    return e1?.codigo == e2?.codigo && e1?.operadora == e2?.operadora;
  }

  @override
  int hash(BandeirasRecord? e) =>
      const ListEquality().hash([e?.codigo, e?.operadora]);

  @override
  bool isValidKey(Object? o) => o is BandeirasRecord;
}
