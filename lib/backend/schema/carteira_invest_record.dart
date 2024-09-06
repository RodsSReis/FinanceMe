import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarteiraInvestRecord extends FirestoreRecord {
  CarteiraInvestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NOMECARTEIRA" field.
  String? _nomecarteira;
  String get nomecarteira => _nomecarteira ?? '';
  bool hasNomecarteira() => _nomecarteira != null;

  // "BANCO" field.
  String? _banco;
  String get banco => _banco ?? '';
  bool hasBanco() => _banco != null;

  // "DESCRICAO" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _nomecarteira = snapshotData['NOMECARTEIRA'] as String?;
    _banco = snapshotData['BANCO'] as String?;
    _descricao = snapshotData['DESCRICAO'] as String?;
    _id = snapshotData['ID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carteira_invest');

  static Stream<CarteiraInvestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarteiraInvestRecord.fromSnapshot(s));

  static Future<CarteiraInvestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarteiraInvestRecord.fromSnapshot(s));

  static CarteiraInvestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarteiraInvestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarteiraInvestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarteiraInvestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarteiraInvestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarteiraInvestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarteiraInvestRecordData({
  String? nomecarteira,
  String? banco,
  String? descricao,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NOMECARTEIRA': nomecarteira,
      'BANCO': banco,
      'DESCRICAO': descricao,
      'ID': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarteiraInvestRecordDocumentEquality
    implements Equality<CarteiraInvestRecord> {
  const CarteiraInvestRecordDocumentEquality();

  @override
  bool equals(CarteiraInvestRecord? e1, CarteiraInvestRecord? e2) {
    return e1?.nomecarteira == e2?.nomecarteira &&
        e1?.banco == e2?.banco &&
        e1?.descricao == e2?.descricao &&
        e1?.id == e2?.id;
  }

  @override
  int hash(CarteiraInvestRecord? e) => const ListEquality()
      .hash([e?.nomecarteira, e?.banco, e?.descricao, e?.id]);

  @override
  bool isValidKey(Object? o) => o is CarteiraInvestRecord;
}
