import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeioPagamentoRecord extends FirestoreRecord {
  MeioPagamentoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "BANCO" field.
  String? _banco;
  String get banco => _banco ?? '';
  bool hasBanco() => _banco != null;

  // "TIPO" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _banco = snapshotData['BANCO'] as String?;
    _tipo = snapshotData['TIPO'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meio_pagamento');

  static Stream<MeioPagamentoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeioPagamentoRecord.fromSnapshot(s));

  static Future<MeioPagamentoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeioPagamentoRecord.fromSnapshot(s));

  static MeioPagamentoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeioPagamentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeioPagamentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeioPagamentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeioPagamentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeioPagamentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeioPagamentoRecordData({
  String? banco,
  String? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'BANCO': banco,
      'TIPO': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeioPagamentoRecordDocumentEquality
    implements Equality<MeioPagamentoRecord> {
  const MeioPagamentoRecordDocumentEquality();

  @override
  bool equals(MeioPagamentoRecord? e1, MeioPagamentoRecord? e2) {
    return e1?.banco == e2?.banco && e1?.tipo == e2?.tipo;
  }

  @override
  int hash(MeioPagamentoRecord? e) =>
      const ListEquality().hash([e?.banco, e?.tipo]);

  @override
  bool isValidKey(Object? o) => o is MeioPagamentoRecord;
}
