import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCadastroRecord extends FirestoreRecord {
  UserCadastroRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "apelido" field.
  String? _apelido;
  String get apelido => _apelido ?? '';
  bool hasApelido() => _apelido != null;

  // "CPF" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "datanasc" field.
  String? _datanasc;
  String get datanasc => _datanasc ?? '';
  bool hasDatanasc() => _datanasc != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "nacionalidade" field.
  String? _nacionalidade;
  String get nacionalidade => _nacionalidade ?? '';
  bool hasNacionalidade() => _nacionalidade != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "dataatualizacao" field.
  DateTime? _dataatualizacao;
  DateTime? get dataatualizacao => _dataatualizacao;
  bool hasDataatualizacao() => _dataatualizacao != null;

  // "escolaridade" field.
  String? _escolaridade;
  String get escolaridade => _escolaridade ?? '';
  bool hasEscolaridade() => _escolaridade != null;

  // "profissao" field.
  String? _profissao;
  String get profissao => _profissao ?? '';
  bool hasProfissao() => _profissao != null;

  // "renda" field.
  String? _renda;
  String get renda => _renda ?? '';
  bool hasRenda() => _renda != null;

  // "origemrenda" field.
  String? _origemrenda;
  String get origemrenda => _origemrenda ?? '';
  bool hasOrigemrenda() => _origemrenda != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  bool hasObjetivo() => _objetivo != null;

  // "patrimonio" field.
  String? _patrimonio;
  String get patrimonio => _patrimonio ?? '';
  bool hasPatrimonio() => _patrimonio != null;

  // "moradia" field.
  String? _moradia;
  String get moradia => _moradia ?? '';
  bool hasMoradia() => _moradia != null;

  // "veiculo" field.
  String? _veiculo;
  String get veiculo => _veiculo ?? '';
  bool hasVeiculo() => _veiculo != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _nome = snapshotData['nome'] as String?;
    _apelido = snapshotData['apelido'] as String?;
    _cpf = snapshotData['CPF'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _datanasc = snapshotData['datanasc'] as String?;
    _cep = snapshotData['CEP'] as String?;
    _estado = snapshotData['estado'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _nacionalidade = snapshotData['nacionalidade'] as String?;
    _sexo = snapshotData['sexo'] as String?;
    _dataatualizacao = snapshotData['dataatualizacao'] as DateTime?;
    _escolaridade = snapshotData['escolaridade'] as String?;
    _profissao = snapshotData['profissao'] as String?;
    _renda = snapshotData['renda'] as String?;
    _origemrenda = snapshotData['origemrenda'] as String?;
    _objetivo = snapshotData['objetivo'] as String?;
    _patrimonio = snapshotData['patrimonio'] as String?;
    _moradia = snapshotData['moradia'] as String?;
    _veiculo = snapshotData['veiculo'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_cadastro');

  static Stream<UserCadastroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCadastroRecord.fromSnapshot(s));

  static Future<UserCadastroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCadastroRecord.fromSnapshot(s));

  static UserCadastroRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCadastroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCadastroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCadastroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCadastroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCadastroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCadastroRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? nome,
  String? apelido,
  String? cpf,
  String? telefone,
  String? datanasc,
  String? cep,
  String? estado,
  String? cidade,
  String? nacionalidade,
  String? sexo,
  DateTime? dataatualizacao,
  String? escolaridade,
  String? profissao,
  String? renda,
  String? origemrenda,
  String? objetivo,
  String? patrimonio,
  String? moradia,
  String? veiculo,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'nome': nome,
      'apelido': apelido,
      'CPF': cpf,
      'telefone': telefone,
      'datanasc': datanasc,
      'CEP': cep,
      'estado': estado,
      'cidade': cidade,
      'nacionalidade': nacionalidade,
      'sexo': sexo,
      'dataatualizacao': dataatualizacao,
      'escolaridade': escolaridade,
      'profissao': profissao,
      'renda': renda,
      'origemrenda': origemrenda,
      'objetivo': objetivo,
      'patrimonio': patrimonio,
      'moradia': moradia,
      'veiculo': veiculo,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCadastroRecordDocumentEquality
    implements Equality<UserCadastroRecord> {
  const UserCadastroRecordDocumentEquality();

  @override
  bool equals(UserCadastroRecord? e1, UserCadastroRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.nome == e2?.nome &&
        e1?.apelido == e2?.apelido &&
        e1?.cpf == e2?.cpf &&
        e1?.telefone == e2?.telefone &&
        e1?.datanasc == e2?.datanasc &&
        e1?.cep == e2?.cep &&
        e1?.estado == e2?.estado &&
        e1?.cidade == e2?.cidade &&
        e1?.nacionalidade == e2?.nacionalidade &&
        e1?.sexo == e2?.sexo &&
        e1?.dataatualizacao == e2?.dataatualizacao &&
        e1?.escolaridade == e2?.escolaridade &&
        e1?.profissao == e2?.profissao &&
        e1?.renda == e2?.renda &&
        e1?.origemrenda == e2?.origemrenda &&
        e1?.objetivo == e2?.objetivo &&
        e1?.patrimonio == e2?.patrimonio &&
        e1?.moradia == e2?.moradia &&
        e1?.veiculo == e2?.veiculo &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UserCadastroRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.nome,
        e?.apelido,
        e?.cpf,
        e?.telefone,
        e?.datanasc,
        e?.cep,
        e?.estado,
        e?.cidade,
        e?.nacionalidade,
        e?.sexo,
        e?.dataatualizacao,
        e?.escolaridade,
        e?.profissao,
        e?.renda,
        e?.origemrenda,
        e?.objetivo,
        e?.patrimonio,
        e?.moradia,
        e?.veiculo,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCadastroRecord;
}
