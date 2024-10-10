import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstadosRecord extends FirestoreRecord {
  EstadosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ESTADO" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "SIGLA" field.
  String? _sigla;
  String get sigla => _sigla ?? '';
  bool hasSigla() => _sigla != null;

  void _initializeFields() {
    _estado = snapshotData['ESTADO'] as String?;
    _sigla = snapshotData['SIGLA'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estados');

  static Stream<EstadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstadosRecord.fromSnapshot(s));

  static Future<EstadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstadosRecord.fromSnapshot(s));

  static EstadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EstadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EstadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEstadosRecordData({
  String? estado,
  String? sigla,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ESTADO': estado,
      'SIGLA': sigla,
    }.withoutNulls,
  );

  return firestoreData;
}

class EstadosRecordDocumentEquality implements Equality<EstadosRecord> {
  const EstadosRecordDocumentEquality();

  @override
  bool equals(EstadosRecord? e1, EstadosRecord? e2) {
    return e1?.estado == e2?.estado && e1?.sigla == e2?.sigla;
  }

  @override
  int hash(EstadosRecord? e) =>
      const ListEquality().hash([e?.estado, e?.sigla]);

  @override
  bool isValidKey(Object? o) => o is EstadosRecord;
}
