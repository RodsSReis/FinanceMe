import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'completecadastro_widget.dart' show CompletecadastroWidget;
import 'package:flutter/material.dart';

class CompletecadastroModel extends FlutterFlowModel<CompletecadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtnome widget.
  FocusNode? txtnomeFocusNode;
  TextEditingController? txtnomeTextController;
  String? Function(BuildContext, String?)? txtnomeTextControllerValidator;
  // State field(s) for txtapelido widget.
  FocusNode? txtapelidoFocusNode;
  TextEditingController? txtapelidoTextController;
  String? Function(BuildContext, String?)? txtapelidoTextControllerValidator;
  // State field(s) for txtCPF widget.
  FocusNode? txtCPFFocusNode;
  TextEditingController? txtCPFTextController;
  String? Function(BuildContext, String?)? txtCPFTextControllerValidator;
  // State field(s) for txttel widget.
  FocusNode? txttelFocusNode;
  TextEditingController? txttelTextController;
  String? Function(BuildContext, String?)? txttelTextControllerValidator;
  // State field(s) for txtcep widget.
  FocusNode? txtcepFocusNode;
  TextEditingController? txtcepTextController;
  String? Function(BuildContext, String?)? txtcepTextControllerValidator;
  // State field(s) for dp_sexo widget.
  String? dpSexoValue;
  FormFieldController<String>? dpSexoValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtnomeFocusNode?.dispose();
    txtnomeTextController?.dispose();

    txtapelidoFocusNode?.dispose();
    txtapelidoTextController?.dispose();

    txtCPFFocusNode?.dispose();
    txtCPFTextController?.dispose();

    txttelFocusNode?.dispose();
    txttelTextController?.dispose();

    txtcepFocusNode?.dispose();
    txtcepTextController?.dispose();
  }
}
