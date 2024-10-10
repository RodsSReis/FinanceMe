import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'cria_lancamento_fixo_widget.dart' show CriaLancamentoFixoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriaLancamentoFixoModel
    extends FlutterFlowModel<CriaLancamentoFixoWidget> {
  ///  Local state fields for this page.

  String mesRefIncial = '-';

  int diasVariaveis = 0;

  DateTime? dtRefAtualizada;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextDataIni widget.
  FocusNode? textDataIniFocusNode1;
  TextEditingController? textDataIniTextController1;
  final textDataIniMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textDataIniTextController1Validator;
  String? _textDataIniTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencher a data';
    }

    return null;
  }

  DateTime? datePicked1;
  // State field(s) for TextDataFim widget.
  FocusNode? textDataFimFocusNode1;
  TextEditingController? textDataFimTextController1;
  final textDataFimMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textDataFimTextController1Validator;
  String? _textDataFimTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencher a data';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for TextNumLanc widget.
  FocusNode? textNumLancFocusNode1;
  TextEditingController? textNumLancTextController1;
  final textNumLancMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textNumLancTextController1Validator;
  // State field(s) for DropFatAtu widget.
  String? dropFatAtuValue;
  FormFieldController<String>? dropFatAtuValueController;
  // State field(s) for TextNFatura widget.
  FocusNode? textNFaturaFocusNode;
  TextEditingController? textNFaturaTextController;
  String? Function(BuildContext, String?)? textNFaturaTextControllerValidator;
  // State field(s) for DropRecor widget.
  String? dropRecorValue;
  FormFieldController<String>? dropRecorValueController;
  // State field(s) for DropTipo widget.
  String? dropTipoValue1;
  FormFieldController<String>? dropTipoValueController1;
  // State field(s) for DropClass widget.
  String? dropClassValue1;
  FormFieldController<String>? dropClassValueController1;
  // State field(s) for DropSub widget.
  String? dropSubValue1;
  FormFieldController<String>? dropSubValueController1;
  // State field(s) for DropCartao widget.
  String? dropCartaoValue;
  FormFieldController<String>? dropCartaoValueController;
  // State field(s) for TextDesc widget.
  FocusNode? textDescFocusNode1;
  TextEditingController? textDescTextController1;
  String? Function(BuildContext, String?)? textDescTextController1Validator;
  InstantTimer? instantTimer;
  // State field(s) for TextDataIni widget.
  FocusNode? textDataIniFocusNode2;
  TextEditingController? textDataIniTextController2;
  final textDataIniMask2 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textDataIniTextController2Validator;
  String? _textDataIniTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencher a data';
    }

    return null;
  }

  DateTime? datePicked3;
  // State field(s) for TextDataFim widget.
  FocusNode? textDataFimFocusNode2;
  TextEditingController? textDataFimTextController2;
  final textDataFimMask2 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textDataFimTextController2Validator;
  String? _textDataFimTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencher a data';
    }

    return null;
  }

  DateTime? datePicked4;
  // State field(s) for TextNumLanc widget.
  FocusNode? textNumLancFocusNode2;
  TextEditingController? textNumLancTextController2;
  final textNumLancMask2 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textNumLancTextController2Validator;
  // State field(s) for DropRecorConta widget.
  String? dropRecorContaValue;
  FormFieldController<String>? dropRecorContaValueController;
  // State field(s) for DropTipo widget.
  String? dropTipoValue2;
  FormFieldController<String>? dropTipoValueController2;
  // State field(s) for DropClass widget.
  String? dropClassValue2;
  FormFieldController<String>? dropClassValueController2;
  // State field(s) for DropSub widget.
  String? dropSubValue2;
  FormFieldController<String>? dropSubValueController2;
  // State field(s) for DropConta widget.
  String? dropContaValue;
  FormFieldController<String>? dropContaValueController;
  // State field(s) for TextDesc widget.
  FocusNode? textDescFocusNode2;
  TextEditingController? textDescTextController2;
  String? Function(BuildContext, String?)? textDescTextController2Validator;

  @override
  void initState(BuildContext context) {
    textDataIniTextController1Validator = _textDataIniTextController1Validator;
    textDataFimTextController1Validator = _textDataFimTextController1Validator;
    textDataIniTextController2Validator = _textDataIniTextController2Validator;
    textDataFimTextController2Validator = _textDataFimTextController2Validator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    textDataIniFocusNode1?.dispose();
    textDataIniTextController1?.dispose();

    textDataFimFocusNode1?.dispose();
    textDataFimTextController1?.dispose();

    textNumLancFocusNode1?.dispose();
    textNumLancTextController1?.dispose();

    textNFaturaFocusNode?.dispose();
    textNFaturaTextController?.dispose();

    textDescFocusNode1?.dispose();
    textDescTextController1?.dispose();

    instantTimer?.cancel();
    textDataIniFocusNode2?.dispose();
    textDataIniTextController2?.dispose();

    textDataFimFocusNode2?.dispose();
    textDataFimTextController2?.dispose();

    textNumLancFocusNode2?.dispose();
    textNumLancTextController2?.dispose();

    textDescFocusNode2?.dispose();
    textDescTextController2?.dispose();
  }
}
