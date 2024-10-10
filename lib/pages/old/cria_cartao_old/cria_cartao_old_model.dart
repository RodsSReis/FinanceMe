import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cria_cartao_old_widget.dart' show CriaCartaoOldWidget;
import 'package:flutter/material.dart';

class CriaCartaoOldModel extends FlutterFlowModel<CriaCartaoOldWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextNomeCartao widget.
  FocusNode? textNomeCartaoFocusNode;
  TextEditingController? textNomeCartaoTextController;
  String? Function(BuildContext, String?)?
      textNomeCartaoTextControllerValidator;
  // State field(s) for DropBandeira widget.
  String? dropBandeiraValue;
  FormFieldController<String>? dropBandeiraValueController;
  // State field(s) for TextDiaVct widget.
  FocusNode? textDiaVctFocusNode;
  TextEditingController? textDiaVctTextController;
  String? Function(BuildContext, String?)? textDiaVctTextControllerValidator;
  // State field(s) for TextDescr widget.
  FocusNode? textDescrFocusNode;
  TextEditingController? textDescrTextController;
  String? Function(BuildContext, String?)? textDescrTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textNomeCartaoFocusNode?.dispose();
    textNomeCartaoTextController?.dispose();

    textDiaVctFocusNode?.dispose();
    textDiaVctTextController?.dispose();

    textDescrFocusNode?.dispose();
    textDescrTextController?.dispose();
  }
}
