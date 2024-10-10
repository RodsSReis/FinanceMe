import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfissaoRecord extends FirestoreRecord {
  ProfissaoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "PROFISSAO" field.
  String? _profissao;
  String get profissao => _profissao ?? '';
  bool hasProfissao() => _profissao != null;

  void _initializeFields() {
    _profissao = snapshotData['PROFISSAO'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profissao');

  static Stream<ProfissaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfissaoRecord.fromSnapshot(s));

  static Future<ProfissaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfissaoRecord.fromSnapshot(s));

  static ProfissaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfissaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfissaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfissaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfissaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfissaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfissaoRecordData({
  String? profissao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PROFISSAO': profissao,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfissaoRecordDocumentEquality implements Equality<ProfissaoRecord> {
  const ProfissaoRecordDocumentEquality();

  @override
  bool equals(ProfissaoRecord? e1, ProfissaoRecord? e2) {
    return e1?.profissao == e2?.profissao;
  }

  @override
  int hash(ProfissaoRecord? e) => const ListEquality().hash([e?.profissao]);

  @override
  bool isValidKey(Object? o) => o is ProfissaoRecord;
}
