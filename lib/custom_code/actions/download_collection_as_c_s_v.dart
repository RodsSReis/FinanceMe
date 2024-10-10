// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future<void> downloadCollectionAsCSV(List<MovimentacoesRecord>? docs) async {
  // Se a lista estiver vazia, inicialize como uma lista vazia
  docs = docs ?? [];

  // Define o cabeçalho do CSV
  String header =
      "ANOREF,CARTEIRA,CLASSIFICACAO,DATA,DATACALC,DATAINPUT,DESCRICAO,DESCRITIVOPARC,FATURAREF,FIXO,ID,MESREF,ORIGEM,PARCELADO,SUBGRUPO,TIPO,VALOR,VALORPARC\n";

  // Usa StringBuffer para construir o conteúdo do arquivo
  StringBuffer fileContent = StringBuffer();
  fileContent.write(header);

  // Adiciona cada registro ao conteúdo
  for (var record in docs) {
    fileContent.write(
        "${record.anoref},${record.carteira},${record.classificacao},${record.data},${record.datacalc},${record.datainput},${record.descricao},${record.descritivoparc},${record.faturaref},${record.fixo},${record.id},${record.mesref},${record.origem},${record.parcelado},${record.subgrupo},${record.tipo},${record.valor},${record.valorparc}\n");
  }

  // Gera o nome do arquivo, utilizando formato ISO para a data
  final String fileName =
      "Movimentacoes_${DateTime.now().toIso8601String()}.csv";

  // Converte o conteúdo do arquivo em uma lista de bytes codificada em UTF-8
  var bytes = utf8.encode(fileContent.toString());

  // Cria um stream a partir da lista de bytes
  final stream = Stream.fromIterable(bytes);

  // Inicia o download do arquivo
  return download(stream, fileName);
}
