import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cria_cartao_widget.dart' show CriaCartaoWidget;
import 'package:flutter/material.dart';

class CriaCartaoModel extends FlutterFlowModel<CriaCartaoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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
  // Stores action output result for [Backend Call - Read Document] action in Icon widget.
  CartoesRecord? outPutCarteiras;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textNomeCartaoFocusNode?.dispose();
    textNomeCartaoTextController?.dispose();

    textDiaVctFocusNode?.dispose();
    textDiaVctTextController?.dispose();

    textDescrFocusNode?.dispose();
    textDescrTextController?.dispose();
  }
}
