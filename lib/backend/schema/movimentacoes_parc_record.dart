import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MovimentacoesParcRecord extends FirestoreRecord {
  MovimentacoesParcRecord._(
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

  // "DESCRITIVOPARC" field.
  int? _descritivoparc;
  int get descritivoparc => _descritivoparc ?? 0;
  bool hasDescritivoparc() => _descritivoparc != null;

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

  // "ORIGEM" field.
  String? _origem;
  String get origem => _origem ?? '';
  bool hasOrigem() => _origem != null;

  // "FATURAREF" field.
  String? _faturaref;
  String get faturaref => _faturaref ?? '';
  bool hasFaturaref() => _faturaref != null;

  // "VALORPARC" field.
  double? _valorparc;
  double get valorparc => _valorparc ?? 0.0;
  bool hasValorparc() => _valorparc != null;

  // "DATACALC" field.
  DateTime? _datacalc;
  DateTime? get datacalc => _datacalc;
  bool hasDatacalc() => _datacalc != null;

  // "FIXO" field.
  String? _fixo;
  String get fixo => _fixo ?? '';
  bool hasFixo() => _fixo != null;

  // "PARCELADO" field.
  String? _parcelado;
  String get parcelado => _parcelado ?? '';
  bool hasParcelado() => _parcelado != null;

  void _initializeFields() {
    _id = snapshotData['ID'] as String?;
    _datainput = snapshotData['DATAINPUT'] as DateTime?;
    _anoref = castToType<int>(snapshotData['ANOREF']);
    _mesref = castToType<int>(snapshotData['MESREF']);
    _tipo = snapshotData['TIPO'] as String?;
    _classificacao = snapshotData['CLASSIFICACAO'] as String?;
    _subgrupo = snapshotData['SUBGRUPO'] as String?;
    _descricao = snapshotData['DESCRICAO'] as String?;
    _descritivoparc = castToType<int>(snapshotData['DESCRITIVOPARC']);
    _carteira = snapshotData['CARTEIRA'] as String?;
    _data = snapshotData['DATA'] as String?;
    _valor = castToType<double>(snapshotData['VALOR']);
    _origem = snapshotData['ORIGEM'] as String?;
    _faturaref = snapshotData['FATURAREF'] as String?;
    _valorparc = castToType<double>(snapshotData['VALORPARC']);
    _datacalc = snapshotData['DATACALC'] as DateTime?;
    _fixo = snapshotData['FIXO'] as String?;
    _parcelado = snapshotData['PARCELADO'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('movimentacoes_parc');

  static Stream<MovimentacoesParcRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MovimentacoesParcRecord.fromSnapshot(s));

  static Future<MovimentacoesParcRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MovimentacoesParcRecord.fromSnapshot(s));

  static MovimentacoesParcRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MovimentacoesParcRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MovimentacoesParcRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MovimentacoesParcRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MovimentacoesParcRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MovimentacoesParcRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMovimentacoesParcRecordData({
  String? id,
  DateTime? datainput,
  int? anoref,
  int? mesref,
  String? tipo,
  String? classificacao,
  String? subgrupo,
  String? descricao,
  int? descritivoparc,
  String? carteira,
  String? data,
  double? valor,
  String? origem,
  String? faturaref,
  double? valorparc,
  DateTime? datacalc,
  String? fixo,
  String? parcelado,
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
      'DESCRITIVOPARC': descritivoparc,
      'CARTEIRA': carteira,
      'DATA': data,
      'VALOR': valor,
      'ORIGEM': origem,
      'FATURAREF': faturaref,
      'VALORPARC': valorparc,
      'DATACALC': datacalc,
      'FIXO': fixo,
      'PARCELADO': parcelado,
    }.withoutNulls,
  );

  return firestoreData;
}

class MovimentacoesParcRecordDocumentEquality
    implements Equality<MovimentacoesParcRecord> {
  const MovimentacoesParcRecordDocumentEquality();

  @override
  bool equals(MovimentacoesParcRecord? e1, MovimentacoesParcRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.datainput == e2?.datainput &&
        e1?.anoref == e2?.anoref &&
        e1?.mesref == e2?.mesref &&
        e1?.tipo == e2?.tipo &&
        e1?.classificacao == e2?.classificacao &&
        e1?.subgrupo == e2?.subgrupo &&
        e1?.descricao == e2?.descricao &&
        e1?.descritivoparc == e2?.descritivoparc &&
        e1?.carteira == e2?.carteira &&
        e1?.data == e2?.data &&
        e1?.valor == e2?.valor &&
        e1?.origem == e2?.origem &&
        e1?.faturaref == e2?.faturaref &&
        e1?.valorparc == e2?.valorparc &&
        e1?.datacalc == e2?.datacalc &&
        e1?.fixo == e2?.fixo &&
        e1?.parcelado == e2?.parcelado;
  }

  @override
  int hash(MovimentacoesParcRecord? e) => const ListEquality().hash([
        e?.id,
        e?.datainput,
        e?.anoref,
        e?.mesref,
        e?.tipo,
        e?.classificacao,
        e?.subgrupo,
        e?.descricao,
        e?.descritivoparc,
        e?.carteira,
        e?.data,
        e?.valor,
        e?.origem,
        e?.faturaref,
        e?.valorparc,
        e?.datacalc,
        e?.fixo,
        e?.parcelado
      ]);

  @override
  bool isValidKey(Object? o) => o is MovimentacoesParcRecord;
}
