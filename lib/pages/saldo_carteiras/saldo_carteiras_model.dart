import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'saldo_carteiras_widget.dart' show SaldoCarteirasWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outRec;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outDesp;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<MovimentacoesRecord>? outGeral;
  // State field(s) for TextData widget.
  FocusNode? textDataFocusNode;
  TextEditingController? textDataTextController;
  final textDataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textDataTextControllerValidator;
  String? _textDataTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencher a data';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for DropTipo widget.
  String? dropTipoValue;
  FormFieldController<String>? dropTipoValueController;
  // State field(s) for DropClass widget.
  String? dropClassValue;
  FormFieldController<String>? dropClassValueController;
  // State field(s) for DropSub widget.
  String? dropSubValue;
  FormFieldController<String>? dropSubValueController;
  // State field(s) for DropCart widget.
  String? dropCartValue;
  FormFieldController<String>? dropCartValueController;
  // State field(s) for DropFixo widget.
  String? dropFixoValue;
  FormFieldController<String>? dropFixoValueController;
  // State field(s) for TextDescr widget.
  FocusNode? textDescrFocusNode;
  TextEditingController? textDescrTextController;
  String? Function(BuildContext, String?)? textDescrTextControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in Icon widget.
  MovimentacoesRecord? outFiltrado;

  @override
  void initState(BuildContext context) {
    textDataTextControllerValidator = _textDataTextControllerValidator;
  }

  @override
  void dispose() {
    textDataFocusNode?.dispose();
    textDataTextController?.dispose();

    textDescrFocusNode?.dispose();
    textDescrTextController?.dispose();
  }
}
