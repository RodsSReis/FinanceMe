import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BancosRecord extends FirestoreRecord {
  BancosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NUMERO" field.
  int? _numero;
  int get numero => _numero ?? 0;
  bool hasNumero() => _numero != null;

  // "NOMEBANCO" field.
  String? _nomebanco;
  String get nomebanco => _nomebanco ?? '';
  bool hasNomebanco() => _nomebanco != null;

  void _initializeFields() {
    _numero = castToType<int>(snapshotData['NUMERO']);
    _nomebanco = snapshotData['NOMEBANCO'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bancos');

  static Stream<BancosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BancosRecord.fromSnapshot(s));

  static Future<BancosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BancosRecord.fromSnapshot(s));

  static BancosRecord fromSnapshot(DocumentSnapshot snapshot) => BancosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BancosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BancosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BancosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BancosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBancosRecordData({
  int? numero,
  String? nomebanco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NUMERO': numero,
      'NOMEBANCO': nomebanco,
    }.withoutNulls,
  );

  return firestoreData;
}

class BancosRecordDocumentEquality implements Equality<BancosRecord> {
  const BancosRecordDocumentEquality();

  @override
  bool equals(BancosRecord? e1, BancosRecord? e2) {
    return e1?.numero == e2?.numero && e1?.nomebanco == e2?.nomebanco;
  }

  @override
  int hash(BancosRecord? e) =>
      const ListEquality().hash([e?.numero, e?.nomebanco]);

  @override
  bool isValidKey(Object? o) => o is BancosRecord;
}
