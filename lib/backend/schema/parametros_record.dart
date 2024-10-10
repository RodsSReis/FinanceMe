import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParametrosRecord extends FirestoreRecord {
  ParametrosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "DATAINI" field.
  DateTime? _dataini;
  DateTime? get dataini => _dataini;
  bool hasDataini() => _dataini != null;

  // "DATAFIM" field.
  DateTime? _datafim;
  DateTime? get datafim => _datafim;
  bool hasDatafim() => _datafim != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "VALORORC" field.
  double? _valororc;
  double get valororc => _valororc ?? 0.0;
  bool hasValororc() => _valororc != null;

  // "MESREF" field.
  String? _mesref;
  String get mesref => _mesref ?? '';
  bool hasMesref() => _mesref != null;

  // "MESANTERIOR" field.
  String? _mesanterior;
  String get mesanterior => _mesanterior ?? '';
  bool hasMesanterior() => _mesanterior != null;

  // "DATAINPUT" field.
  DateTime? _datainput;
  DateTime? get datainput => _datainput;
  bool hasDatainput() => _datainput != null;

  void _initializeFields() {
    _dataini = snapshotData['DATAINI'] as DateTime?;
    _datafim = snapshotData['DATAFIM'] as DateTime?;
    _id = snapshotData['ID'] as String?;
    _valororc = castToType<double>(snapshotData['VALORORC']);
    _mesref = snapshotData['MESREF'] as String?;
    _mesanterior = snapshotData['MESANTERIOR'] as String?;
    _datainput = snapshotData['DATAINPUT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parametros');

  static Stream<ParametrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParametrosRecord.fromSnapshot(s));

  static Future<ParametrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParametrosRecord.fromSnapshot(s));

  static ParametrosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParametrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParametrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParametrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParametrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParametrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParametrosRecordData({
  DateTime? dataini,
  DateTime? datafim,
  String? id,
  double? valororc,
  String? mesref,
  String? mesanterior,
  DateTime? datainput,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DATAINI': dataini,
      'DATAFIM': datafim,
      'ID': id,
      'VALORORC': valororc,
      'MESREF': mesref,
      'MESANTERIOR': mesanterior,
      'DATAINPUT': datainput,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParametrosRecordDocumentEquality implements Equality<ParametrosRecord> {
  const ParametrosRecordDocumentEquality();

  @override
  bool equals(ParametrosRecord? e1, ParametrosRecord? e2) {
    return e1?.dataini == e2?.dataini &&
        e1?.datafim == e2?.datafim &&
        e1?.id == e2?.id &&
        e1?.valororc == e2?.valororc &&
        e1?.mesref == e2?.mesref &&
        e1?.mesanterior == e2?.mesanterior &&
        e1?.datainput == e2?.datainput;
  }

  @override
  int hash(ParametrosRecord? e) => const ListEquality().hash([
        e?.dataini,
        e?.datafim,
        e?.id,
        e?.valororc,
        e?.mesref,
        e?.mesanterior,
        e?.datainput
      ]);

  @override
  bool isValidKey(Object? o) => o is ParametrosRecord;
}
