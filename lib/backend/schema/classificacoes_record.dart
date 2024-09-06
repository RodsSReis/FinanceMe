import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassificacoesRecord extends FirestoreRecord {
  ClassificacoesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "TIPO" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "CLASSIFICACAO" field.
  String? _classificacao;
  String get classificacao => _classificacao ?? '';
  bool hasClassificacao() => _classificacao != null;

  // "MOVIMENTO" field.
  String? _movimento;
  String get movimento => _movimento ?? '';
  bool hasMovimento() => _movimento != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _tipo = snapshotData['TIPO'] as String?;
    _classificacao = snapshotData['CLASSIFICACAO'] as String?;
    _movimento = snapshotData['MOVIMENTO'] as String?;
    _id = snapshotData['ID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('classificacoes');

  static Stream<ClassificacoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassificacoesRecord.fromSnapshot(s));

  static Future<ClassificacoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassificacoesRecord.fromSnapshot(s));

  static ClassificacoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassificacoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassificacoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassificacoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassificacoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassificacoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassificacoesRecordData({
  String? tipo,
  String? classificacao,
  String? movimento,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TIPO': tipo,
      'CLASSIFICACAO': classificacao,
      'MOVIMENTO': movimento,
      'ID': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassificacoesRecordDocumentEquality
    implements Equality<ClassificacoesRecord> {
  const ClassificacoesRecordDocumentEquality();

  @override
  bool equals(ClassificacoesRecord? e1, ClassificacoesRecord? e2) {
    return e1?.tipo == e2?.tipo &&
        e1?.classificacao == e2?.classificacao &&
        e1?.movimento == e2?.movimento &&
        e1?.id == e2?.id;
  }

  @override
  int hash(ClassificacoesRecord? e) => const ListEquality()
      .hash([e?.tipo, e?.classificacao, e?.movimento, e?.id]);

  @override
  bool isValidKey(Object? o) => o is ClassificacoesRecord;
}
