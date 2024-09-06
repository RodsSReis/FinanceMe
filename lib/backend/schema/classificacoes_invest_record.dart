import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassificacoesInvestRecord extends FirestoreRecord {
  ClassificacoesInvestRecord._(
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

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "SUBGRUPO" field.
  String? _subgrupo;
  String get subgrupo => _subgrupo ?? '';
  bool hasSubgrupo() => _subgrupo != null;

  void _initializeFields() {
    _tipo = snapshotData['TIPO'] as String?;
    _classificacao = snapshotData['CLASSIFICACAO'] as String?;
    _id = snapshotData['ID'] as String?;
    _subgrupo = snapshotData['SUBGRUPO'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('classificacoes_invest');

  static Stream<ClassificacoesInvestRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ClassificacoesInvestRecord.fromSnapshot(s));

  static Future<ClassificacoesInvestRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ClassificacoesInvestRecord.fromSnapshot(s));

  static ClassificacoesInvestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassificacoesInvestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassificacoesInvestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassificacoesInvestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassificacoesInvestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassificacoesInvestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassificacoesInvestRecordData({
  String? tipo,
  String? classificacao,
  String? id,
  String? subgrupo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TIPO': tipo,
      'CLASSIFICACAO': classificacao,
      'ID': id,
      'SUBGRUPO': subgrupo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassificacoesInvestRecordDocumentEquality
    implements Equality<ClassificacoesInvestRecord> {
  const ClassificacoesInvestRecordDocumentEquality();

  @override
  bool equals(ClassificacoesInvestRecord? e1, ClassificacoesInvestRecord? e2) {
    return e1?.tipo == e2?.tipo &&
        e1?.classificacao == e2?.classificacao &&
        e1?.id == e2?.id &&
        e1?.subgrupo == e2?.subgrupo;
  }

  @override
  int hash(ClassificacoesInvestRecord? e) => const ListEquality()
      .hash([e?.tipo, e?.classificacao, e?.id, e?.subgrupo]);

  @override
  bool isValidKey(Object? o) => o is ClassificacoesInvestRecord;
}
