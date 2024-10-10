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

  double? orcado;

  double? minhasDespesasOrc;

  List<double> minhasDespCartao = [];
  void addToMinhasDespCartao(double item) => minhasDespCartao.add(item);
  void removeFromMinhasDespCartao(double item) => minhasDespCartao.remove(item);
  void removeAtIndexFromMinhasDespCartao(int index) =>
      minhasDespCartao.removeAt(index);
  void insertAtIndexInMinhasDespCartao(int index, double item) =>
      minhasDespCartao.insert(index, item);
  void updateMinhasDespCartaoAtIndex(int index, Function(double) updateFn) =>
      minhasDespCartao[index] = updateFn(minhasDespCartao[index]);

  List<double> minhasDespConta = [];
  void addToMinhasDespConta(double item) => minhasDespConta.add(item);
  void removeFromMinhasDespConta(double item) => minhasDespConta.remove(item);
  void removeAtIndexFromMinhasDespConta(int index) =>
      minhasDespConta.removeAt(index);
  void insertAtIndexInMinhasDespConta(int index, double item) =>
      minhasDespConta.insert(index, item);
  void updateMinhasDespContaAtIndex(int index, Function(double) updateFn) =>
      minhasDespConta[index] = updateFn(minhasDespConta[index]);

  DateTime? dataIni;

  DateTime? dataFim;

  List<double> minhasTarnsf = [];
  void addToMinhasTarnsf(double item) => minhasTarnsf.add(item);
  void removeFromMinhasTarnsf(double item) => minhasTarnsf.remove(item);
  void removeAtIndexFromMinhasTarnsf(int index) => minhasTarnsf.removeAt(index);
  void insertAtIndexInMinhasTarnsf(int index, double item) =>
      minhasTarnsf.insert(index, item);
  void updateMinhasTarnsfAtIndex(int index, Function(double) updateFn) =>
      minhasTarnsf[index] = updateFn(minhasTarnsf[index]);

  double contaMenosTransf = 0.0;

  String mesRefCartao = '0';

  List<double> minhasDespCartaoAnt = [];
  void addToMinhasDespCartaoAnt(double item) => minhasDespCartaoAnt.add(item);
  void removeFromMinhasDespCartaoAnt(double item) =>
      minhasDespCartaoAnt.remove(item);
  void removeAtIndexFromMinhasDespCartaoAnt(int index) =>
      minhasDespCartaoAnt.removeAt(index);
  void insertAtIndexInMinhasDespCartaoAnt(int index, double item) =>
      minhasDespCartaoAnt.insert(index, item);
  void updateMinhasDespCartaoAntAtIndex(int index, Function(double) updateFn) =>
      minhasDespCartaoAnt[index] = updateFn(minhasDespCartaoAnt[index]);

  String mesRefCartaoAnt = '0';

  double contaMenosCartaoAnt = 0.0;

  double totalDespMenosCartaoAnt = 0.0;

  int difDatasFim = 0;

  double ganhoFixo = 0.0;

  double ganhoVar = 0.0;

  List<double> listGanhoFixo = [];
  void addToListGanhoFixo(double item) => listGanhoFixo.add(item);
  void removeFromListGanhoFixo(double item) => listGanhoFixo.remove(item);
  void removeAtIndexFromListGanhoFixo(int index) =>
      listGanhoFixo.removeAt(index);
  void insertAtIndexInListGanhoFixo(int index, double item) =>
      listGanhoFixo.insert(index, item);
  void updateListGanhoFixoAtIndex(int index, Function(double) updateFn) =>
      listGanhoFixo[index] = updateFn(listGanhoFixo[index]);

  List<double> listGanhoVar = [];
  void addToListGanhoVar(double item) => listGanhoVar.add(item);
  void removeFromListGanhoVar(double item) => listGanhoVar.remove(item);
  void removeAtIndexFromListGanhoVar(int index) => listGanhoVar.removeAt(index);
  void insertAtIndexInListGanhoVar(int index, double item) =>
      listGanhoVar.insert(index, item);
  void updateListGanhoVarAtIndex(int index, Function(double) updateFn) =>
      listGanhoVar[index] = updateFn(listGanhoVar[index]);

  double ganhoTotal = 0.0;

  List<double> minhasTransfRec = [];
  void addToMinhasTransfRec(double item) => minhasTransfRec.add(item);
  void removeFromMinhasTransfRec(double item) => minhasTransfRec.remove(item);
  void removeAtIndexFromMinhasTransfRec(int index) =>
      minhasTransfRec.removeAt(index);
  void insertAtIndexInMinhasTransfRec(int index, double item) =>
      minhasTransfRec.insert(index, item);
  void updateMinhasTransfRecAtIndex(int index, Function(double) updateFn) =>
      minhasTransfRec[index] = updateFn(minhasTransfRec[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in homepage_ofc widget.
  ParametrosRecord? outOrcado;
  // Stores action output result for [Firestore Query - Query a collection] action in homepage_ofc widget.
  List<MovimentacoesRecord>? outPutDespGeralCartao;
  // Stores action output result for [Firestore Query - Query a collection] action in homepage_ofc widget.
  List<MovimentacoesRecord>? outPutDespGeralCartaoAnt;
  // Stores action output result for [Firestore Query - Query a collection] action in homepage_ofc widget.
  List<MovimentacoesRecord>? outPutDespGeralConta;
  // Stores action output result for [Firestore Query - Query a collection] action in homepage_ofc widget.
  List<MovimentacoesRecord>? outPutRecGeralContaFixo;
  // Stores action output result for [Firestore Query - Query a collection] action in homepage_ofc widget.
  List<MovimentacoesRecord>? outPutRecGeralContaVar;
  // Stores action output result for [Firestore Query - Query a collection] action in homepage_ofc widget.
  List<MovimentacoesRecord>? outPutDespTransf;
  // Stores action output result for [Firestore Query - Query a collection] action in homepage_ofc widget.
  List<MovimentacoesRecord>? outPutRecTransf;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outPutRec;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outPutDesp;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<PosicaoInvestRecord>? outPutInvest;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
