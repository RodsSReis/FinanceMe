import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'config_parametros_widget.dart' show ConfigParametrosWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ConfigParametrosModel extends FlutterFlowModel<ConfigParametrosWidget> {
  ///  Local state fields for this page.

  DateTime? dataIni;

  DateTime? dataFim;

  double valorOrc = 0.0;

  String mesRef = '-';

  String mesAnt = '-';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in config_Parametros widget.
  ParametrosRecord? outParametro;
  // State field(s) for TextDataIni widget.
  FocusNode? textDataIniFocusNode;
  TextEditingController? textDataIniTextController;
  final textDataIniMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textDataIniTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for TextDataFim widget.
  FocusNode? textDataFimFocusNode;
  TextEditingController? textDataFimTextController;
  final textDataFimMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textDataFimTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for TextValor widget.
  FocusNode? textValorFocusNode1;
  TextEditingController? textValorTextController1;
  String? Function(BuildContext, String?)? textValorTextController1Validator;
  // State field(s) for TextValor widget.
  FocusNode? textValorFocusNode2;
  TextEditingController? textValorTextController2;
  String? Function(BuildContext, String?)? textValorTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textDataIniFocusNode?.dispose();
    textDataIniTextController?.dispose();

    textDataFimFocusNode?.dispose();
    textDataFimTextController?.dispose();

    textValorFocusNode1?.dispose();
    textValorTextController1?.dispose();

    textValorFocusNode2?.dispose();
    textValorTextController2?.dispose();
  }
}
