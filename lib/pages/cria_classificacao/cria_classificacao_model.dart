import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cria_classificacao_widget.dart' show CriaClassificacaoWidget;
import 'package:flutter/material.dart';

class CriaClassificacaoModel extends FlutterFlowModel<CriaClassificacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for DropTipoConta widget.
  String? dropTipoContaValue;
  FormFieldController<String>? dropTipoContaValueController;
  // State field(s) for TextClassConta widget.
  FocusNode? textClassContaFocusNode;
  TextEditingController? textClassContaTextController;
  String? Function(BuildContext, String?)?
      textClassContaTextControllerValidator;
  // State field(s) for TextSubConta widget.
  FocusNode? textSubContaFocusNode;
  TextEditingController? textSubContaTextController;
  String? Function(BuildContext, String?)? textSubContaTextControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in Icon widget.
  ClassificacoesRecord? outPutClassFiltrado;
  // State field(s) for DropTipoInvest widget.
  String? dropTipoInvestValue;
  FormFieldController<String>? dropTipoInvestValueController;
  // State field(s) for TextClassInvest widget.
  FocusNode? textClassInvestFocusNode;
  TextEditingController? textClassInvestTextController;
  String? Function(BuildContext, String?)?
      textClassInvestTextControllerValidator;
  // State field(s) for TextSubInvest widget.
  FocusNode? textSubInvestFocusNode;
  TextEditingController? textSubInvestTextController;
  String? Function(BuildContext, String?)? textSubInvestTextControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in Icon widget.
  ClassificacoesInvestRecord? outPutClassInvestFiltrado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textClassContaFocusNode?.dispose();
    textClassContaTextController?.dispose();

    textSubContaFocusNode?.dispose();
    textSubContaTextController?.dispose();

    textClassInvestFocusNode?.dispose();
    textClassInvestTextController?.dispose();

    textSubInvestFocusNode?.dispose();
    textSubInvestTextController?.dispose();
  }
}
