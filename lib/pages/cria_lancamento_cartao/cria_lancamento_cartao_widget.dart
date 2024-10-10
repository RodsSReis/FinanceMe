import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'cria_lancamento_cartao_model.dart';
export 'cria_lancamento_cartao_model.dart';

class CriaLancamentoCartaoWidget extends StatefulWidget {
  const CriaLancamentoCartaoWidget({super.key});

  @override
  State<CriaLancamentoCartaoWidget> createState() =>
      _CriaLancamentoCartaoWidgetState();
}

class _CriaLancamentoCartaoWidgetState
    extends State<CriaLancamentoCartaoWidget> {
  late CriaLancamentoCartaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriaLancamentoCartaoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().valueDouble = 0.0;
      safeSetState(() {});
    });

    _model.textDataTextController ??= TextEditingController();
    _model.textDataFocusNode ??= FocusNode();

    _model.textNFaturaTextController ??= TextEditingController(text: '0');
    _model.textNFaturaFocusNode ??= FocusNode();

    _model.textNParcelasTextController ??= TextEditingController(text: '0');
    _model.textNParcelasFocusNode ??= FocusNode();

    _model.textDescTextController ??= TextEditingController();
    _model.textDescFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.9,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 40.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lançamento Cartão',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  buttonSize: 48.0,
                                  icon: Icon(
                                    Icons.close,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('homepage_ofc');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.45,
                                    child: TextFormField(
                                      controller: _model.textDataTextController,
                                      focusNode: _model.textDataFocusNode,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      readOnly: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Data',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Data',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      keyboardType: TextInputType.datetime,
                                      validator: _model
                                          .textDataTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [_model.textDataMask],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 8.0,
                                    buttonSize: 50.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: Icon(
                                      Icons.calendar_month,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      final datePickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: getCurrentTimestamp,
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2050),
                                        builder: (context, child) {
                                          return wrapInMaterialDatePickerTheme(
                                            context,
                                            child!,
                                            headerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            headerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            headerTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      fontSize: 32.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            pickerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            pickerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            selectedDateTimeBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            selectedDateTimeForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            actionButtonForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 24.0,
                                          );
                                        },
                                      );

                                      if (datePickedDate != null) {
                                        safeSetState(() {
                                          _model.datePicked = DateTime(
                                            datePickedDate.year,
                                            datePickedDate.month,
                                            datePickedDate.day,
                                          );
                                        });
                                      }
                                      safeSetState(() {
                                        _model.textDataTextController?.text =
                                            dateTimeFormat("dd/MM/yyyy",
                                                _model.datePicked);
                                        _model.textDataTextController
                                                ?.selection =
                                            TextSelection.collapsed(
                                                offset: _model
                                                    .textDataTextController!
                                                    .text
                                                    .length);
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FlutterFlowDropDown<String>(
                                controller: _model.dropTipoValueController ??=
                                    FormFieldController<String>(null),
                                options: const ['DESPESA', 'RECEITA'],
                                onChanged: (val) => safeSetState(
                                    () => _model.dropTipoValue = val),
                                width: MediaQuery.sizeOf(context).width * 0.45,
                                height: 56.0,
                                searchHintTextStyle:
                                    FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                searchTextStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Tipo',
                                searchHintText: 'Search for an item...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 30.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: true,
                                isMultiSelect: false,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropFatAtuValueController ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: const ['NAO', 'SIM'],
                                            onChanged: (val) async {
                                              safeSetState(() =>
                                                  _model.dropFatAtuValue = val);
                                              if (_model.dropFatAtuValue ==
                                                  'SIM') {
                                                _model.mesRefIncial =
                                                    functions.trataMesRefCartao(
                                                        functions.spliteMonth(_model
                                                            .textDataTextController
                                                            .text),
                                                        functions
                                                            .spliteMonthDigitos(
                                                                _model
                                                                    .textDataTextController
                                                                    .text),
                                                        0);
                                                safeSetState(() {});
                                              } else {
                                                safeSetState(() {
                                                  _model
                                                      .textNFaturaTextController
                                                      ?.text = '1';
                                                  _model.textNFaturaTextController
                                                          ?.selection =
                                                      TextSelection.collapsed(
                                                          offset: _model
                                                              .textNFaturaTextController!
                                                              .text
                                                              .length);
                                                });
                                                _model.mesRefIncial =
                                                    functions.trataMesRefCartao(
                                                        functions.spliteMonth(_model
                                                            .textDataTextController
                                                            .text),
                                                        functions
                                                            .spliteMonthDigitos(
                                                                _model
                                                                    .textDataTextController
                                                                    .text),
                                                        1);
                                                safeSetState(() {});
                                              }
                                            },
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45,
                                            height: 32.0,
                                            searchHintTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            searchTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Fatura Atual?',
                                            searchHintText:
                                                'Search for an item...',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            borderWidth: 2.0,
                                            borderRadius: 8.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: true,
                                            isMultiSelect: false,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Fatura Ref: ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        _model.mesRefIncial,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.45,
                                child: TextFormField(
                                  controller: _model.textNFaturaTextController,
                                  focusNode: _model.textNFaturaFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textNFaturaTextController',
                                    const Duration(milliseconds: 2000),
                                    () async {
                                      _model.mesRefIncial = functions
                                          .trataMesRefCartao(
                                              functions
                                                  .spliteMonth(_model
                                                      .textDataTextController
                                                      .text),
                                              functions.spliteMonthDigitos(
                                                  _model.textDataTextController
                                                      .text),
                                              int.parse(_model
                                                  .textNFaturaTextController
                                                  .text));
                                      safeSetState(() {});
                                    },
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Alterar Fatura?',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Nº Parcelas',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                  keyboardType: TextInputType.number,
                                  validator: _model
                                      .textNFaturaTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              StreamBuilder<List<ClassificacoesRecord>>(
                                stream: queryClassificacoesRecord(
                                  queryBuilder: (classificacoesRecord) =>
                                      classificacoesRecord
                                          .where(
                                            'TIPO',
                                            isEqualTo: _model.dropTipoValue,
                                          )
                                          .where(
                                            'ID',
                                            isEqualTo: currentUserUid,
                                          )
                                          .orderBy('CLASSIFICACAO'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ClassificacoesRecord>
                                      dropClassClassificacoesRecordList =
                                      snapshot.data!;

                                  return FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropClassValueController ??=
                                            FormFieldController<String>(null),
                                    options: dropClassClassificacoesRecordList
                                        .map((e) => e.classificacao)
                                        .toList()
                                        .unique((e) => e),
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropClassValue = val),
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.45,
                                    height: 56.0,
                                    searchHintTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                    searchTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Classificação',
                                    searchHintText: 'Search for an item...',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 30.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: true,
                                    isMultiSelect: false,
                                  );
                                },
                              ),
                              StreamBuilder<List<ClassificacoesRecord>>(
                                stream: queryClassificacoesRecord(
                                  queryBuilder: (classificacoesRecord) =>
                                      classificacoesRecord
                                          .where(
                                            'CLASSIFICACAO',
                                            isEqualTo: _model.dropClassValue,
                                          )
                                          .where(
                                            'ID',
                                            isEqualTo: currentUserUid,
                                          )
                                          .orderBy('MOVIMENTO'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ClassificacoesRecord>
                                      dropSubClassificacoesRecordList =
                                      snapshot.data!;

                                  return FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropSubValueController ??=
                                            FormFieldController<String>(null),
                                    options: dropSubClassificacoesRecordList
                                        .map((e) => e.movimento)
                                        .toList()
                                        .unique((e) => e),
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropSubValue = val),
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.45,
                                    height: 56.0,
                                    searchHintTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                    searchTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Sub Grupo',
                                    searchHintText: 'Search for an item...',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 30.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: true,
                                    isMultiSelect: false,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              StreamBuilder<List<CartoesRecord>>(
                                stream: queryCartoesRecord(
                                  queryBuilder: (cartoesRecord) => cartoesRecord
                                      .where(
                                        'ID',
                                        isEqualTo: currentUserUid,
                                      )
                                      .orderBy('NOMECARTAO'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<CartoesRecord>
                                      dropCartaoCartoesRecordList =
                                      snapshot.data!;

                                  return FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropCartaoValueController ??=
                                            FormFieldController<String>(null),
                                    options: dropCartaoCartoesRecordList
                                        .map((e) => e.nomecartao)
                                        .toList()
                                        .unique((e) => e),
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropCartaoValue = val),
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.45,
                                    height: 56.0,
                                    searchHintTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                    searchTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Cartão',
                                    searchHintText: 'Search for an item...',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 30.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: true,
                                    isMultiSelect: false,
                                  );
                                },
                              ),
                              FlutterFlowDropDown<String>(
                                controller: _model.dropFixoValueController ??=
                                    FormFieldController<String>(null),
                                options: const ['NAO', 'SIM'],
                                onChanged: (val) => safeSetState(
                                    () => _model.dropFixoValue = val),
                                width: MediaQuery.sizeOf(context).width * 0.45,
                                height: 56.0,
                                searchHintTextStyle:
                                    FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                searchTextStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Fixo?',
                                searchHintText: 'Search for an item...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 30.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: true,
                                isMultiSelect: false,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FlutterFlowDropDown<String>(
                                controller: _model.dropParcValueController ??=
                                    FormFieldController<String>(null),
                                options: const ['NAO', 'SIM'],
                                onChanged: (val) => safeSetState(
                                    () => _model.dropParcValue = val),
                                width: MediaQuery.sizeOf(context).width * 0.45,
                                height: 56.0,
                                searchHintTextStyle:
                                    FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                searchTextStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Parcelado?',
                                searchHintText: 'Search for an item...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 30.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: true,
                                isMultiSelect: false,
                              ),
                              if (_model.dropParcValue == 'SIM')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.45,
                                    child: TextFormField(
                                      controller:
                                          _model.textNParcelasTextController,
                                      focusNode: _model.textNParcelasFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Nº Parc.',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Nº Parcelas',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                      maxLength: 2,
                                      keyboardType: TextInputType.number,
                                      validator: _model
                                          .textNParcelasTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.45,
                                height: 54.0,
                                child: custom_widgets.BrasilTextField(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.45,
                                  height: 54.0,
                                  value: formatNumber(
                                    FFAppState().valueDouble,
                                    formatType: FormatType.custom,
                                    currency: 'R\$ ',
                                    format: '#,##0.00',
                                    locale: 'pt_BR',
                                  ),
                                  filledColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 14.0,
                                  colorText:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  hintText: 'Valor',
                                  borderRadius: 8,
                                  borderSize: 2,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Valor Total',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Text(
                                    formatNumber(
                                      _model.valorTotal,
                                      formatType: FormatType.custom,
                                      currency: 'R\$ ',
                                      format: '#,##0.00',
                                      locale: 'pt_BR',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.valorTotal = int.parse(_model
                                            .textNParcelasTextController.text) *
                                        FFAppState().valueDouble;
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.refresh,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.textDescTextController,
                            focusNode: _model.textDescFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Descrição',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Descrição',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                ),
                            maxLines: 2,
                            maxLength: 200,
                            validator: _model.textDescTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              if (_model.datePicked == null) {
                                return;
                              }
                              if (_model.dropTipoValue == null) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Erro'),
                                      content: const Text('Preencher o campo Tipo'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                return;
                              }
                              if (_model.dropFatAtuValue == null) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Erro'),
                                      content: const Text(
                                          'Preencher o campo Fatura Atual'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                return;
                              }
                              if (_model.dropClassValue == null) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Erro'),
                                      content: const Text(
                                          'Preencher o campo Classificação'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                return;
                              }
                              if (_model.dropSubValue == null) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Erro'),
                                      content:
                                          const Text('Preencher o campo Sub Grupo'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                return;
                              }
                              if (_model.dropCartaoValue == null) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Erro'),
                                      content: const Text('Preencher o campo Cartão'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                return;
                              }
                              if (_model.dropFixoValue == null) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Erro'),
                                      content: const Text('Preencher o campo Fixo'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                return;
                              }
                              if (_model.dropParcValue == null) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Erro'),
                                      content:
                                          const Text('Preencher o campo Parcelado'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                return;
                              }
                              if (_model.dropParcValue == 'SIM') {
                                if (_model.dropFatAtuValue == 'SIM') {
                                  FFAppState().contador = -1;
                                  safeSetState(() {});
                                  FFAppState().contador2 = int.parse(
                                      _model.textNParcelasTextController.text);
                                  safeSetState(() {});
                                  FFAppState().contador2 =
                                      FFAppState().contador2 + -1;
                                  safeSetState(() {});
                                  _model.instantTimer = InstantTimer.periodic(
                                    duration: const Duration(milliseconds: 1000),
                                    callback: (timer) async {
                                      while (FFAppState().contador <
                                          FFAppState().contador2) {
                                        FFAppState().contador =
                                            FFAppState().contador + 1;
                                        safeSetState(() {});

                                        await MovimentacoesRecord.collection
                                            .doc()
                                            .set({
                                          ...createMovimentacoesRecordData(
                                            id: currentUserUid,
                                            tipo: _model.dropTipoValue,
                                            classificacao:
                                                _model.dropClassValue,
                                            subgrupo: _model.dropSubValue,
                                            descricao: _model
                                                .textDescTextController.text,
                                            carteira: _model.dropCartaoValue,
                                            anoref: functions.spliteYear(_model
                                                .textDataTextController.text),
                                            mesref: functions.spliteMonth(_model
                                                .textDataTextController.text),
                                            data: _model
                                                .textDataTextController.text,
                                            origem: 'CARTAO',
                                            fixo: _model.dropFixoValue,
                                            parcelado: _model.dropParcValue,
                                            datacalc: _model.datePicked,
                                            valor: FFAppState().valueDouble,
                                            valorparc: _model.valorTotal,
                                            descritivoparc:
                                                FFAppState().contador,
                                            faturaref: functions.trataMesRefCartao(
                                                functions.spliteMonth(_model
                                                    .textDataTextController
                                                    .text),
                                                functions.spliteMonthDigitos(
                                                    _model
                                                        .textDataTextController
                                                        .text),
                                                FFAppState().contador),
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'DATAINPUT':
                                                  FieldValue.serverTimestamp(),
                                            },
                                          ),
                                        });
                                      }
                                      _model.instantTimer?.cancel();
                                    },
                                    startImmediately: true,
                                  );
                                } else {
                                  FFAppState().contador = int.parse(_model
                                          .textNFaturaTextController.text) -
                                      1;
                                  safeSetState(() {});
                                  FFAppState().contador2 = int.parse(
                                      _model.textNParcelasTextController.text);
                                  safeSetState(() {});
                                  _model.instantTimer2 = InstantTimer.periodic(
                                    duration: const Duration(milliseconds: 1000),
                                    callback: (timer) async {
                                      while (FFAppState().contador <
                                          FFAppState().contador2) {
                                        FFAppState().contador =
                                            FFAppState().contador + 1;
                                        safeSetState(() {});

                                        await MovimentacoesRecord.collection
                                            .doc()
                                            .set({
                                          ...createMovimentacoesRecordData(
                                            id: currentUserUid,
                                            tipo: _model.dropTipoValue,
                                            classificacao:
                                                _model.dropClassValue,
                                            subgrupo: _model.dropSubValue,
                                            descricao: _model
                                                .textDescTextController.text,
                                            carteira: _model.dropCartaoValue,
                                            anoref: functions.spliteYear(_model
                                                .textDataTextController.text),
                                            mesref: functions.spliteMonth(_model
                                                .textDataTextController.text),
                                            data: _model
                                                .textDataTextController.text,
                                            origem: 'CARTAO',
                                            fixo: _model.dropFixoValue,
                                            parcelado: _model.dropParcValue,
                                            datacalc: _model.datePicked,
                                            valor: FFAppState().valueDouble,
                                            valorparc: _model.valorTotal,
                                            descritivoparc:
                                                FFAppState().contador,
                                            faturaref: functions.trataMesRefCartao(
                                                functions.spliteMonth(_model
                                                    .textDataTextController
                                                    .text),
                                                functions.spliteMonthDigitos(
                                                    _model
                                                        .textDataTextController
                                                        .text),
                                                FFAppState().contador),
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'DATAINPUT':
                                                  FieldValue.serverTimestamp(),
                                            },
                                          ),
                                        });
                                      }
                                      _model.instantTimer2?.cancel();
                                    },
                                    startImmediately: true,
                                  );
                                }
                              } else {
                                if (_model.dropFatAtuValue == 'SIM') {
                                  await MovimentacoesRecord.collection
                                      .doc()
                                      .set({
                                    ...createMovimentacoesRecordData(
                                      id: currentUserUid,
                                      tipo: _model.dropTipoValue,
                                      classificacao: _model.dropClassValue,
                                      subgrupo: _model.dropSubValue,
                                      descricao:
                                          _model.textDescTextController.text,
                                      carteira: _model.dropCartaoValue,
                                      descritivoparc: 0,
                                      anoref: functions.spliteYear(
                                          _model.textDataTextController.text),
                                      mesref: functions.spliteMonth(
                                          _model.textDataTextController.text),
                                      data: _model.textDataTextController.text,
                                      origem: 'CARTAO',
                                      fixo: _model.dropFixoValue,
                                      parcelado: _model.dropParcValue,
                                      datacalc: _model.datePicked,
                                      faturaref: functions.trataMesRefCartao(
                                          functions.spliteMonth(_model
                                              .textDataTextController.text),
                                          functions.spliteMonthDigitos(_model
                                              .textDataTextController.text),
                                          0),
                                      valor: FFAppState().valueDouble,
                                      valorparc: _model.valorTotal,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'DATAINPUT':
                                            FieldValue.serverTimestamp(),
                                      },
                                    ),
                                  });
                                } else {
                                  await MovimentacoesRecord.collection
                                      .doc()
                                      .set({
                                    ...createMovimentacoesRecordData(
                                      id: currentUserUid,
                                      tipo: _model.dropTipoValue,
                                      classificacao: _model.dropClassValue,
                                      subgrupo: _model.dropSubValue,
                                      descricao:
                                          _model.textDescTextController.text,
                                      carteira: _model.dropCartaoValue,
                                      descritivoparc: 0,
                                      anoref: functions.spliteYear(
                                          _model.textDataTextController.text),
                                      mesref: functions.spliteMonth(
                                          _model.textDataTextController.text),
                                      data: _model.textDataTextController.text,
                                      origem: 'CARTAO',
                                      fixo: _model.dropFixoValue,
                                      parcelado: _model.dropParcValue,
                                      datacalc: _model.datePicked,
                                      faturaref: functions.trataMesRefCartao(
                                          functions.spliteMonth(_model
                                              .textDataTextController.text),
                                          functions.spliteMonthDigitos(_model
                                              .textDataTextController.text),
                                          int.parse(_model
                                              .textNFaturaTextController.text)),
                                      valor: FFAppState().valueDouble,
                                      valorparc: _model.valorTotal,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'DATAINPUT':
                                            FieldValue.serverTimestamp(),
                                      },
                                    ),
                                  });
                                }
                              }

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Lançamento incluído com sucesso!',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).success,
                                ),
                              );

                              context.pushNamed('cria_LancamentoCartao');
                            },
                            text: 'Salvar Lançamento',
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).info,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
