import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartoesRecord extends FirestoreRecord {
  CartoesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "NOMECARTAO" field.
  String? _nomecartao;
  String get nomecartao => _nomecartao ?? '';
  bool hasNomecartao() => _nomecartao != null;

  // "BANDEIRA" field.
  String? _bandeira;
  String get bandeira => _bandeira ?? '';
  bool hasBandeira() => _bandeira != null;

  // "LIMITE" field.
  int? _limite;
  int get limite => _limite ?? 0;
  bool hasLimite() => _limite != null;

  // "DATAVCT" field.
  int? _datavct;
  int get datavct => _datavct ?? 0;
  bool hasDatavct() => _datavct != null;

  // "DESCRICAO" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  void _initializeFields() {
    _id = snapshotData['ID'] as String?;
    _nomecartao = snapshotData['NOMECARTAO'] as String?;
    _bandeira = snapshotData['BANDEIRA'] as String?;
    _limite = castToType<int>(snapshotData['LIMITE']);
    _datavct = castToType<int>(snapshotData['DATAVCT']);
    _descricao = snapshotData['DESCRICAO'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cartoes');

  static Stream<CartoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartoesRecord.fromSnapshot(s));

  static Future<CartoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartoesRecord.fromSnapshot(s));

  static CartoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CartoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartoesRecordData({
  String? id,
  String? nomecartao,
  String? bandeira,
  int? limite,
  int? datavct,
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ID': id,
      'NOMECARTAO': nomecartao,
      'BANDEIRA': bandeira,
      'LIMITE': limite,
      'DATAVCT': datavct,
      'DESCRICAO': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartoesRecordDocumentEquality implements Equality<CartoesRecord> {
  const CartoesRecordDocumentEquality();

  @override
  bool equals(CartoesRecord? e1, CartoesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nomecartao == e2?.nomecartao &&
        e1?.bandeira == e2?.bandeira &&
        e1?.limite == e2?.limite &&
        e1?.datavct == e2?.datavct &&
        e1?.descricao == e2?.descricao;
  }

  @override
  int hash(CartoesRecord? e) => const ListEquality().hash(
      [e?.id, e?.nomecartao, e?.bandeira, e?.limite, e?.datavct, e?.descricao]);

  @override
  bool isValidKey(Object? o) => o is CartoesRecord;
}
