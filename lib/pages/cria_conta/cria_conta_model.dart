import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cria_conta_widget.dart' show CriaContaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriaContaModel extends FlutterFlowModel<CriaContaWidget> {
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
  // State field(s) for TextDesc widget.
  FocusNode? textDescFocusNode;
  TextEditingController? textDescTextController;
  String? Function(BuildContext, String?)? textDescTextControllerValidator;
  // State field(s) for TextData widget.
  FocusNode? textDataFocusNode;
  TextEditingController? textDataTextController;
  final textDataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textDataTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - Read Document] action in Icon widget.
  CarteirasRecord? outPutCarteiras;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textCarteiraFocusNode?.dispose();
    textCarteiraTextController?.dispose();

    textDescFocusNode?.dispose();
    textDescTextController?.dispose();

    textDataFocusNode?.dispose();
    textDataTextController?.dispose();
  }
}
