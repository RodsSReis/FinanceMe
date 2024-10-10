import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cria_lancamento_invest_widget.dart' show CriaLancamentoInvestWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriaLancamentoInvestModel
    extends FlutterFlowModel<CriaLancamentoInvestWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextData widget.
  FocusNode? textDataFocusNode;
  TextEditingController? textDataTextController;
  final textDataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textDataTextControllerValidator;
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
  // State field(s) for DropConta widget.
  String? dropContaValue;
  FormFieldController<String>? dropContaValueController;
  // State field(s) for DropCarteira widget.
  String? dropCarteiraValue;
  FormFieldController<String>? dropCarteiraValueController;
  // State field(s) for TextDesc widget.
  FocusNode? textDescFocusNode;
  TextEditingController? textDescTextController;
  String? Function(BuildContext, String?)? textDescTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textDataFocusNode?.dispose();
    textDataTextController?.dispose();

    textDescFocusNode?.dispose();
    textDescTextController?.dispose();
  }
}
