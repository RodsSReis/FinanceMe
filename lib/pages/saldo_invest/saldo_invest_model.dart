import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'saldo_invest_widget.dart' show SaldoInvestWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SaldoInvestModel extends FlutterFlowModel<SaldoInvestWidget> {
  ///  Local state fields for this page.

  List<String> unicCarteiras = [];
  void addToUnicCarteiras(String item) => unicCarteiras.add(item);
  void removeFromUnicCarteiras(String item) => unicCarteiras.remove(item);
  void removeAtIndexFromUnicCarteiras(int index) =>
      unicCarteiras.removeAt(index);
  void insertAtIndexInUnicCarteiras(int index, String item) =>
      unicCarteiras.insert(index, item);
  void updateUnicCarteirasAtIndex(int index, Function(String) updateFn) =>
      unicCarteiras[index] = updateFn(unicCarteiras[index]);

  List<String> unicClass = [];
  void addToUnicClass(String item) => unicClass.add(item);
  void removeFromUnicClass(String item) => unicClass.remove(item);
  void removeAtIndexFromUnicClass(int index) => unicClass.removeAt(index);
  void insertAtIndexInUnicClass(int index, String item) =>
      unicClass.insert(index, item);
  void updateUnicClassAtIndex(int index, Function(String) updateFn) =>
      unicClass[index] = updateFn(unicClass[index]);

  List<String> unicSub = [];
  void addToUnicSub(String item) => unicSub.add(item);
  void removeFromUnicSub(String item) => unicSub.remove(item);
  void removeAtIndexFromUnicSub(int index) => unicSub.removeAt(index);
  void insertAtIndexInUnicSub(int index, String item) =>
      unicSub.insert(index, item);
  void updateUnicSubAtIndex(int index, Function(String) updateFn) =>
      unicSub[index] = updateFn(unicSub[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in saldo_Invest widget.
  List<CarteiraInvestRecord>? outCart;
  // Stores action output result for [Firestore Query - Query a collection] action in saldo_Invest widget.
  List<ClassificacoesInvestRecord>? outClassif;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<PosicaoInvestRecord>? outFilterCart;
  // State field(s) for TextData widget.
  FocusNode? textDataFocusNode;
  TextEditingController? textDataTextController;
  final textDataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textDataTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for DropCarteira widget.
  String? dropCarteiraValue;
  FormFieldController<String>? dropCarteiraValueController;
  // State field(s) for DropClass widget.
  String? dropClassValue;
  FormFieldController<String>? dropClassValueController;
  // State field(s) for DropSubGrupo widget.
  String? dropSubGrupoValue;
  FormFieldController<String>? dropSubGrupoValueController;
  // Stores action output result for [Backend Call - Read Document] action in Icon widget.
  PosicaoInvestRecord? outFiltrado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textDataFocusNode?.dispose();
    textDataTextController?.dispose();
  }
}
