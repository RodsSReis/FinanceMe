import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCadastroCompletoRecord extends FirestoreRecord {
  UserCadastroCompletoRecord._(
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

  // "CPF" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "SEXO" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "EMAIL" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "TELEFONE" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  void _initializeFields() {
    _nome = snapshotData['NOME'] as String?;
    _apelido = snapshotData['APELIDO'] as String?;
    _cpf = snapshotData['CPF'] as String?;
    _cep = snapshotData['CEP'] as String?;
    _sexo = snapshotData['SEXO'] as String?;
    _email = snapshotData['EMAIL'] as String?;
    _id = snapshotData['ID'] as String?;
    _telefone = snapshotData['TELEFONE'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_cadastro_completo');

  static Stream<UserCadastroCompletoRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => UserCadastroCompletoRecord.fromSnapshot(s));

  static Future<UserCadastroCompletoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserCadastroCompletoRecord.fromSnapshot(s));

  static UserCadastroCompletoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCadastroCompletoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCadastroCompletoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCadastroCompletoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCadastroCompletoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCadastroCompletoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCadastroCompletoRecordData({
  String? nome,
  String? apelido,
  String? cpf,
  String? cep,
  String? sexo,
  String? email,
  String? id,
  String? telefone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NOME': nome,
      'APELIDO': apelido,
      'CPF': cpf,
      'CEP': cep,
      'SEXO': sexo,
      'EMAIL': email,
      'ID': id,
      'TELEFONE': telefone,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCadastroCompletoRecordDocumentEquality
    implements Equality<UserCadastroCompletoRecord> {
  const UserCadastroCompletoRecordDocumentEquality();

  @override
  bool equals(UserCadastroCompletoRecord? e1, UserCadastroCompletoRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.apelido == e2?.apelido &&
        e1?.cpf == e2?.cpf &&
        e1?.cep == e2?.cep &&
        e1?.sexo == e2?.sexo &&
        e1?.email == e2?.email &&
        e1?.id == e2?.id &&
        e1?.telefone == e2?.telefone;
  }

  @override
  int hash(UserCadastroCompletoRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.apelido,
        e?.cpf,
        e?.cep,
        e?.sexo,
        e?.email,
        e?.id,
        e?.telefone
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCadastroCompletoRecord;
}
