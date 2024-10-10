import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EscolaridadeRecord extends FirestoreRecord {
  EscolaridadeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ESCOLARIDADE" field.
  String? _escolaridade;
  String get escolaridade => _escolaridade ?? '';
  bool hasEscolaridade() => _escolaridade != null;

  void _initializeFields() {
    _escolaridade = snapshotData['ESCOLARIDADE'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('escolaridade');

  static Stream<EscolaridadeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EscolaridadeRecord.fromSnapshot(s));

  static Future<EscolaridadeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EscolaridadeRecord.fromSnapshot(s));

  static EscolaridadeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EscolaridadeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EscolaridadeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EscolaridadeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EscolaridadeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EscolaridadeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEscolaridadeRecordData({
  String? escolaridade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ESCOLARIDADE': escolaridade,
    }.withoutNulls,
  );

  return firestoreData;
}

class EscolaridadeRecordDocumentEquality
    implements Equality<EscolaridadeRecord> {
  const EscolaridadeRecordDocumentEquality();

  @override
  bool equals(EscolaridadeRecord? e1, EscolaridadeRecord? e2) {
    return e1?.escolaridade == e2?.escolaridade;
  }

  @override
  int hash(EscolaridadeRecord? e) =>
      const ListEquality().hash([e?.escolaridade]);

  @override
  bool isValidKey(Object? o) => o is EscolaridadeRecord;
}
