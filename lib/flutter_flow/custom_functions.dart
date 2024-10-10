import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int spliteYear(String date) {
  if (date.isEmpty) {
    throw Exception('Data não pode ser vazia');
  }

  List<String> dateParts = date.split('/');

  if (dateParts.length != 3) {
    throw Exception('Formato de data inválido. Use yyyy-MM-dd');
  }

  int year = int.parse(dateParts[2]);
  return year; // Retorna o ano como int
}

int spliteMonth(String date) {
  if (date.isEmpty) {
    throw Exception('Data não pode ser vazia');
  }

  List<String> dateParts = date.split('/');

  if (dateParts.length != 3) {
    throw Exception('Formato de data inválido. Use yyyy-MM-dd');
  }

  int year = int.parse(dateParts[1]);
  return year; // Retorna o ano como int
}

String classifyValue(double value) {
  if (value < 0) {
    return 'DESPESA'; // Retorna 'DESPESA' para valores negativos
  } else {
    return 'RECEITA'; // Retorna 'RECEITA' para valores positivos
  }
}

double somarValoresDaLista(List<double> minhalista) {
  double soma = 0;

  for (double valorAtual in minhalista) {
    soma += valorAtual;
  }

  return soma;
}

int spliteMonthDigitos(String date) {
  if (date.isEmpty) {
    throw Exception('Data não pode ser vazia');
  }

  List<String> dateParts = date.split('/');

  if (dateParts.length != 3) {
    throw Exception('Formato de data inválido. Use yyyy-MM-dd');
  }

  int year =
      int.parse(dateParts[2]); // Ajuste para pegar o ano do formato correto
  return year % 100; // Retorna os dois últimos dígitos do ano
}

int subtraiDatas(
  DateTime data1,
  DateTime data2,
) {
  // codigo para gerar a diferença de dias entre duas datas
  Duration diff = data1.difference(data2);
  int diffInDays = diff.inDays;
  return diffInDays.abs(); // Retorna a diferença em dias, sem sinal.
}

String ajustavalorfinanceiro(double txtvalor) {
  // Converte o valor para uma string formatada como número financeiro brasileiro
  String formattedValue =
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$', decimalDigits: 2)
          .format(txtvalor);

  return formattedValue;
}

String trataMesRefCartao(
  int mesref,
  int anoref,
  int numparcelas,
) {
  // criar um script onde ele vai verificar a variável mesref, somar a variável numparcelas e depois associar o resultado um mes do ano (ex: 9 = set, 10 = out)  caso o resultado seja maior que 12, ele deve somar 1 na variável anoref
  // Soma a variável numparcelas ao mês de referência
  int totalMes = mesref + numparcelas;

  // Verifica se o total de meses ultrapassa 12
  if (totalMes > 12) {
    totalMes -= 12; // Subtrai 12 para obter o mês correto
    anoref++; // Incrementa o ano de referência
  }

  // Associa o resultado a um mês do ano
  String mes;
  switch (totalMes) {
    case 1:
      mes = 'jan';
      break;
    case 2:
      mes = 'fev';
      break;
    case 3:
      mes = 'mar';
      break;
    case 4:
      mes = 'abr';
      break;
    case 5:
      mes = 'mai';
      break;
    case 6:
      mes = 'jun';
      break;
    case 7:
      mes = 'jul';
      break;
    case 8:
      mes = 'ago';
      break;
    case 9:
      mes = 'set';
      break;
    case 10:
      mes = 'out';
      break;
    case 11:
      mes = 'nov';
      break;
    case 12:
      mes = 'dez';
      break;
    default:
      mes = 'inválido';
  }

  return '$mes/$anoref'; // Retorna o mês e ano formatados
}

DateTime somarDatas(
  int dias,
  DateTime dtinicial,
) {
  // criar um script onde vai ter uma variavel de data (data inicial)  que vai ser somada a um numero inteiro (variavel dias) e ela retorna a nova data futura
  // Adiciona a quantidade de dias à data inicial
  DateTime novaData = dtinicial.add(Duration(days: dias));
  return novaData; // Retorna a nova data futura
}
