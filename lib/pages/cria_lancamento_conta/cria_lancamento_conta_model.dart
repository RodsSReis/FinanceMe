import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cria_lancamento_conta_widget.dart' show CriaLancamentoContaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriaLancamentoContaModel
    extends FlutterFlowModel<CriaLancamentoContaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
  // State field(s) for DropConta widget.
  String? dropContaValue;
  FormFieldController<String>? dropContaValueController;
  // State field(s) for DropFixo widget.
  String? dropFixoValue;
  FormFieldController<String>? dropFixoValueController;
  // State field(s) for TextDescr widget.
  FocusNode? textDescrFocusNode;
  TextEditingController? textDescrTextController;
  String? Function(BuildContext, String?)? textDescrTextControllerValidator;

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
