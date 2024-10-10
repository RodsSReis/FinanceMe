import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cria_carteira_invest_widget.dart' show CriaCarteiraInvestWidget;
import 'package:flutter/material.dart';

class CriaCarteiraInvestModel
    extends FlutterFlowModel<CriaCarteiraInvestWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextCarteira widget.
  FocusNode? textCarteiraFocusNode;
  TextEditingController? textCarteiraTextController;
  String? Function(BuildContext, String?)? textCarteiraTextControllerValidator;
  // State field(s) for DropBanco widget.
  String? dropBancoValue;
  FormFieldController<String>? dropBancoValueController;
  // State field(s) for TextDescr widget.
  FocusNode? textDescrFocusNode;
  TextEditingController? textDescrTextController;
  String? Function(BuildContext, String?)? textDescrTextControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in Icon widget.
  CarteiraInvestRecord? outPutCarteiras;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textCarteiraFocusNode?.dispose();
    textCarteiraTextController?.dispose();

    textDescrFocusNode?.dispose();
    textDescrTextController?.dispose();
  }
}
