import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CadastroFullRecord extends FirestoreRecord {
  CadastroFullRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NOME" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "APELIDO" field.
  String? _apelido;
  String get apelido => _apelido ?? '';
  bool hasApelido() => _apelido != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "EMAIL" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "CPF" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "SEXO" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "ESCOLARIDADE" field.
  String? _escolaridade;
  String get escolaridade => _escolaridade ?? '';
  bool hasEscolaridade() => _escolaridade != null;

  // "RENDAMENSAL" field.
  int? _rendamensal;
  int get rendamensal => _rendamensal ?? 0;
  bool hasRendamensal() => _rendamensal != null;

  // "CELULAR" field.
  String? _celular;
  String get celular => _celular ?? '';
  bool hasCelular() => _celular != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "PAIS" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "ESTADO" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "CIDADE" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  void _initializeFields() {
    _nome = snapshotData['NOME'] as String?;
    _apelido = snapshotData['APELIDO'] as String?;
    _id = snapshotData['ID'] as String?;
    _email = snapshotData['EMAIL'] as String?;
    _cpf = snapshotData['CPF'] as String?;
    _sexo = snapshotData['SEXO'] as String?;
    _escolaridade = snapshotData['ESCOLARIDADE'] as String?;
    _rendamensal = castToType<int>(snapshotData['RENDAMENSAL']);
    _celular = snapshotData['CELULAR'] as String?;
    _cep = snapshotData['CEP'] as String?;
    _pais = snapshotData['PAIS'] as String?;
    _estado = snapshotData['ESTADO'] as String?;
    _cidade = snapshotData['CIDADE'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cadastro_full');

  static Stream<CadastroFullRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CadastroFullRecord.fromSnapshot(s));

  static Future<CadastroFullRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CadastroFullRecord.fromSnapshot(s));

  static CadastroFullRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CadastroFullRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CadastroFullRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CadastroFullRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CadastroFullRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CadastroFullRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCadastroFullRecordData({
  String? nome,
  String? apelido,
  String? id,
  String? email,
  String? cpf,
  String? sexo,
  String? escolaridade,
  int? rendamensal,
  String? celular,
  String? cep,
  String? pais,
  String? estado,
  String? cidade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NOME': nome,
      'APELIDO': apelido,
      'ID': id,
      'EMAIL': email,
      'CPF': cpf,
      'SEXO': sexo,
      'ESCOLARIDADE': escolaridade,
      'RENDAMENSAL': rendamensal,
      'CELULAR': celular,
      'CEP': cep,
      'PAIS': pais,
      'ESTADO': estado,
      'CIDADE': cidade,
    }.withoutNulls,
  );

  return firestoreData;
}

class CadastroFullRecordDocumentEquality
    implements Equality<CadastroFullRecord> {
  const CadastroFullRecordDocumentEquality();

  @override
  bool equals(CadastroFullRecord? e1, CadastroFullRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.apelido == e2?.apelido &&
        e1?.id == e2?.id &&
        e1?.email == e2?.email &&
        e1?.cpf == e2?.cpf &&
        e1?.sexo == e2?.sexo &&
        e1?.escolaridade == e2?.escolaridade &&
        e1?.rendamensal == e2?.rendamensal &&
        e1?.celular == e2?.celular &&
        e1?.cep == e2?.cep &&
        e1?.pais == e2?.pais &&
        e1?.estado == e2?.estado &&
        e1?.cidade == e2?.cidade;
  }

  @override
  int hash(CadastroFullRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.apelido,
        e?.id,
        e?.email,
        e?.cpf,
        e?.sexo,
        e?.escolaridade,
        e?.rendamensal,
        e?.celular,
        e?.cep,
        e?.pais,
        e?.estado,
        e?.cidade
      ]);

  @override
  bool isValidKey(Object? o) => o is CadastroFullRecord;
}
