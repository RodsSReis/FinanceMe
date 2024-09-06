import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarteirasRecord extends FirestoreRecord {
  CarteirasRecord._(
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

  // "DATAREF" field.
  String? _dataref;
  String get dataref => _dataref ?? '';
  bool hasDataref() => _dataref != null;

  // "VALORINICIAL" field.
  double? _valorinicial;
  double get valorinicial => _valorinicial ?? 0.0;
  bool hasValorinicial() => _valorinicial != null;

  void _initializeFields() {
    _nomecarteira = snapshotData['NOMECARTEIRA'] as String?;
    _banco = snapshotData['BANCO'] as String?;
    _descricao = snapshotData['DESCRICAO'] as String?;
    _id = snapshotData['ID'] as String?;
    _dataref = snapshotData['DATAREF'] as String?;
    _valorinicial = castToType<double>(snapshotData['VALORINICIAL']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carteiras');

  static Stream<CarteirasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarteirasRecord.fromSnapshot(s));

  static Future<CarteirasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarteirasRecord.fromSnapshot(s));

  static CarteirasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarteirasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarteirasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarteirasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarteirasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarteirasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarteirasRecordData({
  String? nomecarteira,
  String? banco,
  String? descricao,
  String? id,
  String? dataref,
  double? valorinicial,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NOMECARTEIRA': nomecarteira,
      'BANCO': banco,
      'DESCRICAO': descricao,
      'ID': id,
      'DATAREF': dataref,
      'VALORINICIAL': valorinicial,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarteirasRecordDocumentEquality implements Equality<CarteirasRecord> {
  const CarteirasRecordDocumentEquality();

  @override
  bool equals(CarteirasRecord? e1, CarteirasRecord? e2) {
    return e1?.nomecarteira == e2?.nomecarteira &&
        e1?.banco == e2?.banco &&
        e1?.descricao == e2?.descricao &&
        e1?.id == e2?.id &&
        e1?.dataref == e2?.dataref &&
        e1?.valorinicial == e2?.valorinicial;
  }

  @override
  int hash(CarteirasRecord? e) => const ListEquality().hash([
        e?.nomecarteira,
        e?.banco,
        e?.descricao,
        e?.id,
        e?.dataref,
        e?.valorinicial
      ]);

  @override
  bool isValidKey(Object? o) => o is CarteirasRecord;
}
