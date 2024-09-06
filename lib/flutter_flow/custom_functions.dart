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
