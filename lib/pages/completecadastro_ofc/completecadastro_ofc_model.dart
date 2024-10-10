import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'completecadastro_ofc_widget.dart' show CompletecadastroOfcWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CompletecadastroOfcModel
    extends FlutterFlowModel<CompletecadastroOfcWidget> {
  ///  Local state fields for this page.

  String listEstado = '-';

  String listProfissao = '-';

  String listEscolaridade = '-';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in completecadastro_ofc widget.
  List<UserCadastroRecord>? outCadastro;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  // State field(s) for txtApelido widget.
  FocusNode? txtApelidoFocusNode;
  TextEditingController? txtApelidoTextController;
  String? Function(BuildContext, String?)? txtApelidoTextControllerValidator;
  // State field(s) for txtCpf widget.
  FocusNode? txtCpfFocusNode;
  TextEditingController? txtCpfTextController;
  final txtCpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? txtCpfTextControllerValidator;
  // State field(s) for txtTel widget.
  FocusNode? txtTelFocusNode;
  TextEditingController? txtTelTextController;
  final txtTelMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? txtTelTextControllerValidator;
  // State field(s) for txtDataNasc widget.
  FocusNode? txtDataNascFocusNode;
  TextEditingController? txtDataNascTextController;
  final txtDataNascMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtDataNascTextControllerValidator;
  // State field(s) for txtCep widget.
  FocusNode? txtCepFocusNode;
  TextEditingController? txtCepTextController;
  final txtCepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? txtCepTextControllerValidator;
  // State field(s) for DropEstado widget.
  String? dropEstadoValue;
  FormFieldController<String>? dropEstadoValueController;
  // State field(s) for txtCidade widget.
  FocusNode? txtCidadeFocusNode;
  TextEditingController? txtCidadeTextController;
  String? Function(BuildContext, String?)? txtCidadeTextControllerValidator;
  // State field(s) for DropNaci widget.
  String? dropNaciValue;
  FormFieldController<String>? dropNaciValueController;
  // State field(s) for DropSexo widget.
  String? dropSexoValue;
  FormFieldController<String>? dropSexoValueController;
  // State field(s) for DropEscol widget.
  String? dropEscolValue;
  FormFieldController<String>? dropEscolValueController;
  // State field(s) for DropProf widget.
  String? dropProfValue;
  FormFieldController<String>? dropProfValueController;
  // State field(s) for DropRenda widget.
  String? dropRendaValue;
  FormFieldController<String>? dropRendaValueController;
  // State field(s) for DropOrigemRenda widget.
  String? dropOrigemRendaValue;
  FormFieldController<String>? dropOrigemRendaValueController;
  // State field(s) for DropObj widget.
  String? dropObjValue;
  FormFieldController<String>? dropObjValueController;
  // State field(s) for DropPatri widget.
  String? dropPatriValue;
  FormFieldController<String>? dropPatriValueController;
  // State field(s) for DropMoradia widget.
  String? dropMoradiaValue;
  FormFieldController<String>? dropMoradiaValueController;
  // State field(s) for DropVeic widget.
  String? dropVeicValue;
  FormFieldController<String>? dropVeicValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtApelidoFocusNode?.dispose();
    txtApelidoTextController?.dispose();

    txtCpfFocusNode?.dispose();
    txtCpfTextController?.dispose();

    txtTelFocusNode?.dispose();
    txtTelTextController?.dispose();

    txtDataNascFocusNode?.dispose();
    txtDataNascTextController?.dispose();

    txtCepFocusNode?.dispose();
    txtCepTextController?.dispose();

    txtCidadeFocusNode?.dispose();
    txtCidadeTextController?.dispose();
  }
}
