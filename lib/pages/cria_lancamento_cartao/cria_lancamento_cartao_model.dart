import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'cria_lancamento_cartao_widget.dart' show CriaLancamentoCartaoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriaLancamentoCartaoModel
    extends FlutterFlowModel<CriaLancamentoCartaoWidget> {
  ///  Local state fields for this page.

  double valorTotal = 0.0;

  String mesRefIncial = '-';

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
  // State field(s) for DropFatAtu widget.
  String? dropFatAtuValue;
  FormFieldController<String>? dropFatAtuValueController;
  // State field(s) for TextNFatura widget.
  FocusNode? textNFaturaFocusNode;
  TextEditingController? textNFaturaTextController;
  String? Function(BuildContext, String?)? textNFaturaTextControllerValidator;
  // State field(s) for DropClass widget.
  String? dropClassValue;
  FormFieldController<String>? dropClassValueController;
  // State field(s) for DropSub widget.
  String? dropSubValue;
  FormFieldController<String>? dropSubValueController;
  // State field(s) for DropCartao widget.
  String? dropCartaoValue;
  FormFieldController<String>? dropCartaoValueController;
  // State field(s) for DropFixo widget.
  String? dropFixoValue;
  FormFieldController<String>? dropFixoValueController;
  // State field(s) for DropParc widget.
  String? dropParcValue;
  FormFieldController<String>? dropParcValueController;
  // State field(s) for TextNParcelas widget.
  FocusNode? textNParcelasFocusNode;
  TextEditingController? textNParcelasTextController;
  String? Function(BuildContext, String?)? textNParcelasTextControllerValidator;
  // State field(s) for TextDesc widget.
  FocusNode? textDescFocusNode;
  TextEditingController? textDescTextController;
  String? Function(BuildContext, String?)? textDescTextControllerValidator;
  InstantTimer? instantTimer;
  InstantTimer? instantTimer2;

  @override
  void initState(BuildContext context) {
    textDataTextControllerValidator = _textDataTextControllerValidator;
  }

  @override
  void dispose() {
    textDataFocusNode?.dispose();
    textDataTextController?.dispose();

    textNFaturaFocusNode?.dispose();
    textNFaturaTextController?.dispose();

    textNParcelasFocusNode?.dispose();
    textNParcelasTextController?.dispose();

    textDescFocusNode?.dispose();
    textDescTextController?.dispose();

    instantTimer?.cancel();
    instantTimer2?.cancel();
  }

  /// Action blocks.
  Future pagamentoParcelado(BuildContext context) async {}
}
