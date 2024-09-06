import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'saldo_carteiras_widget.dart' show SaldoCarteirasWidget;
import 'package:flutter/material.dart';

class SaldoCarteirasModel extends FlutterFlowModel<SaldoCarteirasWidget> {
  ///  Local state fields for this page.

  List<double> minhasDespesas = [];
  void addToMinhasDespesas(double item) => minhasDespesas.add(item);
  void removeFromMinhasDespesas(double item) => minhasDespesas.remove(item);
  void removeAtIndexFromMinhasDespesas(int index) =>
      minhasDespesas.removeAt(index);
  void insertAtIndexInMinhasDespesas(int index, double item) =>
      minhasDespesas.insert(index, item);
  void updateMinhasDespesasAtIndex(int index, Function(double) updateFn) =>
      minhasDespesas[index] = updateFn(minhasDespesas[index]);

  List<double> minhasReceitas = [];
  void addToMinhasReceitas(double item) => minhasReceitas.add(item);
  void removeFromMinhasReceitas(double item) => minhasReceitas.remove(item);
  void removeAtIndexFromMinhasReceitas(int index) =>
      minhasReceitas.removeAt(index);
  void insertAtIndexInMinhasReceitas(int index, double item) =>
      minhasReceitas.insert(index, item);
  void updateMinhasReceitasAtIndex(int index, Function(double) updateFn) =>
      minhasReceitas[index] = updateFn(minhasReceitas[index]);

  double? resultado;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outRec;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outDesp;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outGeral;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
