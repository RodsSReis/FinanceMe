import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cd_oper_widget.dart' show CdOperWidget;
import 'package:flutter/material.dart';

class CdOperModel extends FlutterFlowModel<CdOperWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txt_dt widget.
  FocusNode? txtDtFocusNode;
  TextEditingController? txtDtTextController;
  String? Function(BuildContext, String?)? txtDtTextControllerValidator;
  // State field(s) for txt_ano widget.
  FocusNode? txtAnoFocusNode;
  TextEditingController? txtAnoTextController;
  String? Function(BuildContext, String?)? txtAnoTextControllerValidator;
  // State field(s) for txt_mes widget.
  FocusNode? txtMesFocusNode;
  TextEditingController? txtMesTextController;
  String? Function(BuildContext, String?)? txtMesTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // State field(s) for txt_numparcelas widget.
  FocusNode? txtNumparcelasFocusNode;
  TextEditingController? txtNumparcelasTextController;
  String? Function(BuildContext, String?)?
      txtNumparcelasTextControllerValidator;
  // State field(s) for txt_descricao widget.
  FocusNode? txtDescricaoFocusNode;
  TextEditingController? txtDescricaoTextController;
  String? Function(BuildContext, String?)? txtDescricaoTextControllerValidator;
  // State field(s) for txt_vlr widget.
  FocusNode? txtVlrFocusNode;
  TextEditingController? txtVlrTextController;
  String? Function(BuildContext, String?)? txtVlrTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtDtFocusNode?.dispose();
    txtDtTextController?.dispose();

    txtAnoFocusNode?.dispose();
    txtAnoTextController?.dispose();

    txtMesFocusNode?.dispose();
    txtMesTextController?.dispose();

    txtNumparcelasFocusNode?.dispose();
    txtNumparcelasTextController?.dispose();

    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();

    txtVlrFocusNode?.dispose();
    txtVlrTextController?.dispose();
  }
}
