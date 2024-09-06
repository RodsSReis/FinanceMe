import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MovimentacaoInvestRecord extends FirestoreRecord {
  MovimentacaoInvestRecord._(
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

  // "TIPO" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "CLASSIFICACAO" field.
  String? _classificacao;
  String get classificacao => _classificacao ?? '';
  bool hasClassificacao() => _classificacao != null;

  // "SUBGRUPO" field.
  String? _subgrupo;
  String get subgrupo => _subgrupo ?? '';
  bool hasSubgrupo() => _subgrupo != null;

  // "DESCRICAO" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "CARTEIRA" field.
  String? _carteira;
  String get carteira => _carteira ?? '';
  bool hasCarteira() => _carteira != null;

  // "DATA" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "VALOR" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  void _initializeFields() {
    _id = snapshotData['ID'] as String?;
    _datainput = snapshotData['DATAINPUT'] as DateTime?;
    _anoref = castToType<int>(snapshotData['ANOREF']);
    _mesref = castToType<int>(snapshotData['MESREF']);
    _tipo = snapshotData['TIPO'] as String?;
    _classificacao = snapshotData['CLASSIFICACAO'] as String?;
    _subgrupo = snapshotData['SUBGRUPO'] as String?;
    _descricao = snapshotData['DESCRICAO'] as String?;
    _carteira = snapshotData['CARTEIRA'] as String?;
    _data = snapshotData['DATA'] as String?;
    _valor = castToType<double>(snapshotData['VALOR']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('movimentacao_invest');

  static Stream<MovimentacaoInvestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MovimentacaoInvestRecord.fromSnapshot(s));

  static Future<MovimentacaoInvestRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MovimentacaoInvestRecord.fromSnapshot(s));

  static MovimentacaoInvestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MovimentacaoInvestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MovimentacaoInvestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MovimentacaoInvestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MovimentacaoInvestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MovimentacaoInvestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMovimentacaoInvestRecordData({
  String? id,
  DateTime? datainput,
  int? anoref,
  int? mesref,
  String? tipo,
  String? classificacao,
  String? subgrupo,
  String? descricao,
  String? carteira,
  String? data,
  double? valor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ID': id,
      'DATAINPUT': datainput,
      'ANOREF': anoref,
      'MESREF': mesref,
      'TIPO': tipo,
      'CLASSIFICACAO': classificacao,
      'SUBGRUPO': subgrupo,
      'DESCRICAO': descricao,
      'CARTEIRA': carteira,
      'DATA': data,
      'VALOR': valor,
    }.withoutNulls,
  );

  return firestoreData;
}

class MovimentacaoInvestRecordDocumentEquality
    implements Equality<MovimentacaoInvestRecord> {
  const MovimentacaoInvestRecordDocumentEquality();

  @override
  bool equals(MovimentacaoInvestRecord? e1, MovimentacaoInvestRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.datainput == e2?.datainput &&
        e1?.anoref == e2?.anoref &&
        e1?.mesref == e2?.mesref &&
        e1?.tipo == e2?.tipo &&
        e1?.classificacao == e2?.classificacao &&
        e1?.subgrupo == e2?.subgrupo &&
        e1?.descricao == e2?.descricao &&
        e1?.carteira == e2?.carteira &&
        e1?.data == e2?.data &&
        e1?.valor == e2?.valor;
  }

  @override
  int hash(MovimentacaoInvestRecord? e) => const ListEquality().hash([
        e?.id,
        e?.datainput,
        e?.anoref,
        e?.mesref,
        e?.tipo,
        e?.classificacao,
        e?.subgrupo,
        e?.descricao,
        e?.carteira,
        e?.data,
        e?.valor
      ]);

  @override
  bool isValidKey(Object? o) => o is MovimentacaoInvestRecord;
}
