import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PosicaoInvestRecord extends FirestoreRecord {
  PosicaoInvestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "DATAINPUT" field.
  DateTime? _datainput;
  DateTime? get datainput => _datainput;
  bool hasDatainput() => _datainput != null;

  // "ANOREF" field.
  int? _anoref;
  int get anoref => _anoref ?? 0;
  bool hasAnoref() => _anoref != null;

  // "MESREF" field.
  int? _mesref;
  int get mesref => _mesref ?? 0;
  bool hasMesref() => _mesref != null;

  // "CLASSIFICACAO" field.
  String? _classificacao;
  String get classificacao => _classificacao ?? '';
  bool hasClassificacao() => _classificacao != null;

  // "SUBGRUPO" field.
  String? _subgrupo;
  String get subgrupo => _subgrupo ?? '';
  bool hasSubgrupo() => _subgrupo != null;

  // "VALOR" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "DATAREF" field.
  String? _dataref;
  String get dataref => _dataref ?? '';
  bool hasDataref() => _dataref != null;

  // "CARTEIRAINVEST" field.
  String? _carteirainvest;
  String get carteirainvest => _carteirainvest ?? '';
  bool hasCarteirainvest() => _carteirainvest != null;

  // "DATACALC" field.
  DateTime? _datacalc;
  DateTime? get datacalc => _datacalc;
  bool hasDatacalc() => _datacalc != null;

  void _initializeFields() {
    _id = snapshotData['ID'] as String?;
    _datainput = snapshotData['DATAINPUT'] as DateTime?;
    _anoref = castToType<int>(snapshotData['ANOREF']);
    _mesref = castToType<int>(snapshotData['MESREF']);
    _classificacao = snapshotData['CLASSIFICACAO'] as String?;
    _subgrupo = snapshotData['SUBGRUPO'] as String?;
    _valor = castToType<double>(snapshotData['VALOR']);
    _dataref = snapshotData['DATAREF'] as String?;
    _carteirainvest = snapshotData['CARTEIRAINVEST'] as String?;
    _datacalc = snapshotData['DATACALC'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posicao_invest');

  static Stream<PosicaoInvestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PosicaoInvestRecord.fromSnapshot(s));

  static Future<PosicaoInvestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PosicaoInvestRecord.fromSnapshot(s));

  static PosicaoInvestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PosicaoInvestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PosicaoInvestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PosicaoInvestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PosicaoInvestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PosicaoInvestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPosicaoInvestRecordData({
  String? id,
  DateTime? datainput,
  int? anoref,
  int? mesref,
  String? classificacao,
  String? subgrupo,
  double? valor,
  String? dataref,
  String? carteirainvest,
  DateTime? datacalc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ID': id,
      'DATAINPUT': datainput,
      'ANOREF': anoref,
      'MESREF': mesref,
      'CLASSIFICACAO': classificacao,
      'SUBGRUPO': subgrupo,
      'VALOR': valor,
      'DATAREF': dataref,
      'CARTEIRAINVEST': carteirainvest,
      'DATACALC': datacalc,
    }.withoutNulls,
  );

  return firestoreData;
}

class PosicaoInvestRecordDocumentEquality
    implements Equality<PosicaoInvestRecord> {
  const PosicaoInvestRecordDocumentEquality();

  @override
  bool equals(PosicaoInvestRecord? e1, PosicaoInvestRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.datainput == e2?.datainput &&
        e1?.anoref == e2?.anoref &&
        e1?.mesref == e2?.mesref &&
        e1?.classificacao == e2?.classificacao &&
        e1?.subgrupo == e2?.subgrupo &&
        e1?.valor == e2?.valor &&
        e1?.dataref == e2?.dataref &&
        e1?.carteirainvest == e2?.carteirainvest &&
        e1?.datacalc == e2?.datacalc;
  }

  @override
  int hash(PosicaoInvestRecord? e) => const ListEquality().hash([
        e?.id,
        e?.datainput,
        e?.anoref,
        e?.mesref,
        e?.classificacao,
        e?.subgrupo,
        e?.valor,
        e?.dataref,
        e?.carteirainvest,
        e?.datacalc
      ]);

  @override
  bool isValidKey(Object? o) => o is PosicaoInvestRecord;
}
