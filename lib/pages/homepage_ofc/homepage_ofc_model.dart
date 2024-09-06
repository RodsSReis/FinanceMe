import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_ofc_widget.dart' show HomepageOfcWidget;
import 'package:flutter/material.dart';

class HomepageOfcModel extends FlutterFlowModel<HomepageOfcWidget> {
  ///  Local state fields for this page.

  List<double> minhaListaReceita = [];
  void addToMinhaListaReceita(double item) => minhaListaReceita.add(item);
  void removeFromMinhaListaReceita(double item) =>
      minhaListaReceita.remove(item);
  void removeAtIndexFromMinhaListaReceita(int index) =>
      minhaListaReceita.removeAt(index);
  void insertAtIndexInMinhaListaReceita(int index, double item) =>
      minhaListaReceita.insert(index, item);
  void updateMinhaListaReceitaAtIndex(int index, Function(double) updateFn) =>
      minhaListaReceita[index] = updateFn(minhaListaReceita[index]);

  List<double> minhaListaDespesa = [];
  void addToMinhaListaDespesa(double item) => minhaListaDespesa.add(item);
  void removeFromMinhaListaDespesa(double item) =>
      minhaListaDespesa.remove(item);
  void removeAtIndexFromMinhaListaDespesa(int index) =>
      minhaListaDespesa.removeAt(index);
  void insertAtIndexInMinhaListaDespesa(int index, double item) =>
      minhaListaDespesa.insert(index, item);
  void updateMinhaListaDespesaAtIndex(int index, Function(double) updateFn) =>
      minhaListaDespesa[index] = updateFn(minhaListaDespesa[index]);

  double resultado = 0.0;

  double resultadoInvest = 0.0;

  List<double> minhaListaReceitaInvest = [];
  void addToMinhaListaReceitaInvest(double item) =>
      minhaListaReceitaInvest.add(item);
  void removeFromMinhaListaReceitaInvest(double item) =>
      minhaListaReceitaInvest.remove(item);
  void removeAtIndexFromMinhaListaReceitaInvest(int index) =>
      minhaListaReceitaInvest.removeAt(index);
  void insertAtIndexInMinhaListaReceitaInvest(int index, double item) =>
      minhaListaReceitaInvest.insert(index, item);
  void updateMinhaListaReceitaInvestAtIndex(
          int index, Function(double) updateFn) =>
      minhaListaReceitaInvest[index] = updateFn(minhaListaReceitaInvest[index]);

  List<double> minhaListaDespesaInvest = [];
  void addToMinhaListaDespesaInvest(double item) =>
      minhaListaDespesaInvest.add(item);
  void removeFromMinhaListaDespesaInvest(double item) =>
      minhaListaDespesaInvest.remove(item);
  void removeAtIndexFromMinhaListaDespesaInvest(int index) =>
      minhaListaDespesaInvest.removeAt(index);
  void insertAtIndexInMinhaListaDespesaInvest(int index, double item) =>
      minhaListaDespesaInvest.insert(index, item);
  void updateMinhaListaDespesaInvestAtIndex(
          int index, Function(double) updateFn) =>
      minhaListaDespesaInvest[index] = updateFn(minhaListaDespesaInvest[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outPutRec;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outPutDesp;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outPutRec2;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outPutDesp2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
