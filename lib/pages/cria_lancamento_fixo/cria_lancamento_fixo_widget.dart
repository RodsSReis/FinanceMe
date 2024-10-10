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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'cria_lancamento_fixo_model.dart';
export 'cria_lancamento_fixo_model.dart';

class CriaLancamentoFixoWidget extends StatefulWidget {
  const CriaLancamentoFixoWidget({super.key});

  @override
  State<CriaLancamentoFixoWidget> createState() =>
      _CriaLancamentoFixoWidgetState();
}

class _CriaLancamentoFixoWidgetState extends State<CriaLancamentoFixoWidget>
    with TickerProviderStateMixin {
  late CriaLancamentoFixoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriaLancamentoFixoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().popup = false;
      safeSetState(() {});
      FFAppState().valueDouble = 0.0;
      safeSetState(() {});
      await Future.wait([
        Future(() async {
          safeSetState(() {
            _model.dropFatAtuValueController?.reset();
            _model.dropRecorValueController?.reset();
            _model.dropTipoValueController1?.reset();
            _model.dropSubValueController1?.reset();
            _model.dropCartaoValueController?.reset();
            _model.dropClassValueController1?.reset();
            _model.dropRecorContaValueController?.reset();
            _model.dropTipoValueController2?.reset();
            _model.dropClassValueController2?.reset();
            _model.dropSubValueController2?.reset();
            _model.dropContaValueController?.reset();
          });
        }),
        Future(() async {
          safeSetState(() {
            _model.textDataIniTextController1?.clear();
            _model.textDataFimTextController1?.clear();
            _model.textNumLancTextController1?.text = '0';
            _model.textNFaturaTextController?.text = '1';
            _model.textDescTextController1?.clear();
            _model.textDataIniTextController2?.clear();
            _model.textDataFimTextController2?.clear();
            _model.textNumLancTextController2?.text = '0';
            _model.textDescTextController2?.clear();
          });
        }),
      ]);
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.textDataIniTextController1 ??= TextEditingController();
    _model.textDataIniFocusNode1 ??= FocusNode();

    _model.textDataFimTextController1 ??= TextEditingController();
    _model.textDataFimFocusNode1 ??= FocusNode();

    _model.textNumLancTextController1 ??= TextEditingController(text: '0');
    _model.textNumLancFocusNode1 ??= FocusNode();

    _model.textNFaturaTextController ??= TextEditingController(text: '1');
    _model.textNFaturaFocusNode ??= FocusNode();

    _model.textDescTextController1 ??= TextEditingController();
    _model.textDescFocusNode1 ??= FocusNode();

    _model.textDataIniTextController2 ??= TextEditingController();
    _model.textDataIniFocusNode2 ??= FocusNode();

    _model.textDataFimTextController2 ??= TextEditingController();
    _model.textDataFimFocusNode2 ??= FocusNode();

    _model.textNumLancTextController2 ??= TextEditingController(text: '0');
    _model.textNumLancFocusNode2 ??= FocusNode();

    _model.textDescTextController2 ??= TextEditingController();
    _model.textDescFocusNode2 ??= FocusNode();

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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 40.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lançamento Fixo',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          buttonSize: 48.0,
                          icon: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 25.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('homepage_ofc');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(-1.0, 0),
                        child: TabBar(
                          isScrollable: true,
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                          unselectedLabelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                          indicatorColor: FlutterFlowTheme.of(context).primary,
                          indicatorWeight: 5.0,
                          tabs: const [
                            Tab(
                              text: 'Cartão',
                            ),
                            Tab(
                              text: 'Conta',
                            ),
                            Tab(
                              text: 'Investimento',
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [
                              () async {
                                await Future.wait([
                                  Future(() async {
                                    safeSetState(() {
                                      _model.dropFatAtuValueController?.reset();
                                      _model.dropRecorValueController?.reset();
                                      _model.dropTipoValueController1?.reset();
                                      _model.dropSubValueController1?.reset();
                                      _model.dropCartaoValueController?.reset();
                                      _model.dropClassValueController1?.reset();
                                      _model.dropRecorContaValueController
                                          ?.reset();
                                      _model.dropTipoValueController2?.reset();
                                      _model.dropClassValueController2?.reset();
                                      _model.dropSubValueController2?.reset();
                                      _model.dropContaValueController?.reset();
                                    });
                                  }),
                                  Future(() async {
                                    safeSetState(() {
                                      _model.textDataIniTextController1
                                          ?.clear();
                                      _model.textDataFimTextController1
                                          ?.clear();
                                      _model.textNumLancTextController1?.text =
                                          '0';
                                      _model.textNFaturaTextController?.text =
                                          '1';
                                      _model.textDescTextController1?.clear();
                                      _model.textDataIniTextController2
                                          ?.clear();
                                      _model.textDataFimTextController2
                                          ?.clear();
                                      _model.textNumLancTextController2?.text =
                                          '0';
                                      _model.textDescTextController2?.clear();
                                    });
                                  }),
                                ]);
                              },
                              () async {
                                await Future.wait([
                                  Future(() async {
                                    safeSetState(() {
                                      _model.dropFatAtuValueController?.reset();
                                      _model.dropRecorValueController?.reset();
                                      _model.dropTipoValueController1?.reset();
                                      _model.dropSubValueController1?.reset();
                                      _model.dropCartaoValueController?.reset();
                                      _model.dropClassValueController1?.reset();
                                      _model.dropRecorContaValueController
                                          ?.reset();
                                      _model.dropTipoValueController2?.reset();
                                      _model.dropClassValueController2?.reset();
                                      _model.dropSubValueController2?.reset();
                                      _model.dropContaValueController?.reset();
                                    });
                                  }),
                                  Future(() async {
                                    safeSetState(() {
                                      _model.textDataIniTextController1
                                          ?.clear();
                                      _model.textDataFimTextController1
                                          ?.clear();
                                      _model.textNumLancTextController1?.text =
                                          '0';
                                      _model.textNFaturaTextController?.text =
                                          '1';
                                      _model.textDescTextController1?.clear();
                                      _model.textDataIniTextController2
                                          ?.clear();
                                      _model.textDataFimTextController2
                                          ?.clear();
                                      _model.textNumLancTextController2?.text =
                                          '0';
                                      _model.textDescTextController2?.clear();
                                    });
                                  }),
                                ]);
                              },
                              () async {
                                await Future.wait([
                                  Future(() async {
                                    safeSetState(() {
                                      _model.dropFatAtuValueController?.reset();
                                      _model.dropRecorValueController?.reset();
                                      _model.dropTipoValueController1?.reset();
                                      _model.dropSubValueController1?.reset();
                                      _model.dropCartaoValueController?.reset();
                                      _model.dropClassValueController1?.reset();
                                      _model.dropRecorContaValueController
                                          ?.reset();
                                      _model.dropTipoValueController2?.reset();
                                      _model.dropClassValueController2?.reset();
                                      _model.dropSubValueController2?.reset();
                                      _model.dropContaValueController?.reset();
                                    });
                                  }),
                                  Future(() async {
                                    safeSetState(() {
                                      _model.textDataIniTextController1
                                          ?.clear();
                                      _model.textDataFimTextController1
                                          ?.clear();
                                      _model.textNumLancTextController1?.text =
                                          '0';
                                      _model.textNFaturaTextController?.text =
                                          '1';
                                      _model.textDescTextController1?.clear();
                                      _model.textDataIniTextController2
                                          ?.clear();
                                      _model.textDataFimTextController2
                                          ?.clear();
                                      _model.textNumLancTextController2?.text =
                                          '0';
                                      _model.textDescTextController2?.clear();
                                    });
                                  }),
                                ]);
                              }
                            ][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Form(
                                key: _model.formKey1,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: SizedBox(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.45,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .textDataIniTextController1,
                                                    focusNode: _model
                                                        .textDataIniFocusNode1,
                                                    autofocus: true,
                                                    textCapitalization:
                                                        TextCapitalization.none,
                                                    readOnly: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Data Inicio',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: 'Data',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.start,
                                                    keyboardType:
                                                        TextInputType.datetime,
                                                    validator: _model
                                                        .textDataIniTextController1Validator
                                                        .asValidator(context),
                                                    inputFormatters: [
                                                      _model.textDataIniMask1
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 8.0,
                                                    buttonSize: 50.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    icon: Icon(
                                                      Icons.calendar_month,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      final datePicked1Date =
                                                          await showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            getCurrentTimestamp,
                                                        firstDate:
                                                            DateTime(1900),
                                                        lastDate:
                                                            DateTime(2050),
                                                        builder:
                                                            (context, child) {
                                                          return wrapInMaterialDatePickerTheme(
                                                            context,
                                                            child!,
                                                            headerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            headerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            headerTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      fontSize:
                                                                          32.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            pickerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            pickerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            selectedDateTimeBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            selectedDateTimeForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            actionButtonForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            iconSize: 24.0,
                                                          );
                                                        },
                                                      );

                                                      if (datePicked1Date !=
                                                          null) {
                                                        safeSetState(() {
                                                          _model.datePicked1 =
                                                              DateTime(
                                                            datePicked1Date
                                                                .year,
                                                            datePicked1Date
                                                                .month,
                                                            datePicked1Date
                                                                .day,
                                                          );
                                                        });
                                                      }
                                                      safeSetState(() {
                                                        _model.textDataIniTextController1
                                                                ?.text =
                                                            dateTimeFormat(
                                                                "dd/MM/yyyy",
                                                                _model
                                                                    .datePicked1);
                                                        _model.textDataIniTextController1
                                                                ?.selection =
                                                            TextSelection.collapsed(
                                                                offset: _model
                                                                    .textDataIniTextController1!
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: SizedBox(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.45,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .textDataFimTextController1,
                                                    focusNode: _model
                                                        .textDataFimFocusNode1,
                                                    autofocus: true,
                                                    textCapitalization:
                                                        TextCapitalization.none,
                                                    readOnly: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Data Fim',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: 'Data',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.start,
                                                    keyboardType:
                                                        TextInputType.datetime,
                                                    validator: _model
                                                        .textDataFimTextController1Validator
                                                        .asValidator(context),
                                                    inputFormatters: [
                                                      _model.textDataFimMask1
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 8.0,
                                                    buttonSize: 50.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    icon: Icon(
                                                      Icons.calendar_month,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      final datePicked2Date =
                                                          await showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            getCurrentTimestamp,
                                                        firstDate:
                                                            DateTime(1900),
                                                        lastDate:
                                                            DateTime(2050),
                                                        builder:
                                                            (context, child) {
                                                          return wrapInMaterialDatePickerTheme(
                                                            context,
                                                            child!,
                                                            headerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            headerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            headerTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      fontSize:
                                                                          32.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            pickerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            pickerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            selectedDateTimeBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            selectedDateTimeForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            actionButtonForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            iconSize: 24.0,
                                                          );
                                                        },
                                                      );

                                                      if (datePicked2Date !=
                                                          null) {
                                                        safeSetState(() {
                                                          _model.datePicked2 =
                                                              DateTime(
                                                            datePicked2Date
                                                                .year,
                                                            datePicked2Date
                                                                .month,
                                                            datePicked2Date
                                                                .day,
                                                          );
                                                        });
                                                      }
                                                      safeSetState(() {
                                                        _model.textDataFimTextController1
                                                                ?.text =
                                                            dateTimeFormat(
                                                                "dd/MM/yyyy",
                                                                _model
                                                                    .datePicked2);
                                                        _model.textDataFimTextController1
                                                                ?.selection =
                                                            TextSelection.collapsed(
                                                                offset: _model
                                                                    .textDataFimTextController1!
                                                                    .text
                                                                    .length);
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: SizedBox(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textNumLancTextController1,
                                                      focusNode: _model
                                                          .textNumLancFocusNode1,
                                                      autofocus: true,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      readOnly: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Total Lanç.',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      keyboardType:
                                                          TextInputType
                                                              .datetime,
                                                      validator: _model
                                                          .textNumLancTextController1Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model.textNumLancMask1
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              FlutterFlowDropDown<
                                                                  String>(
                                                            controller: _model
                                                                    .dropFatAtuValueController ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            options: const [
                                                              'NAO',
                                                              'SIM'
                                                            ],
                                                            onChanged: (val) =>
                                                                safeSetState(() =>
                                                                    _model.dropFatAtuValue =
                                                                        val),
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.45,
                                                            height: 32.0,
                                                            searchHintTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            searchTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            hintText:
                                                                'Fatura Atual?',
                                                            searchHintText:
                                                                'Search for an item...',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 30.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            borderWidth: 2.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                            hidesUnderline:
                                                                true,
                                                            isOverButton: true,
                                                            isSearchable: true,
                                                            isMultiSelect:
                                                                false,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Fatura Ref: ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Text(
                                                        'Valor Total',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.45,
                                                child: TextFormField(
                                                  controller: _model
                                                      .textNFaturaTextController,
                                                  focusNode: _model
                                                      .textNFaturaFocusNode,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Num de Lanç. por Fatura',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'Nº Parcelas',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .textNFaturaTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropRecorValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: const [
                                                  'DIARIO',
                                                  'SEMANAL',
                                                  'MENSAL'
                                                ],
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                      .dropRecorValue = val);
                                                  FFAppState().contador = 0;
                                                  safeSetState(() {});
                                                  if (_model.dropRecorValue ==
                                                      'DIARIO') {
                                                    FFAppState().contador =
                                                        functions.subtraiDatas(
                                                            _model.datePicked1!,
                                                            _model
                                                                .datePicked2!);
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model.dropRecorValue ==
                                                        'SEMANAL') {
                                                      FFAppState().contador =
                                                          functions.subtraiDatas(
                                                              _model
                                                                  .datePicked1!,
                                                              _model
                                                                  .datePicked2!);
                                                      safeSetState(() {});
                                                      FFAppState().contador =
                                                          (FFAppState()
                                                                      .contador /
                                                                  7)
                                                              .truncate();
                                                      safeSetState(() {});
                                                    } else {
                                                      FFAppState().contador =
                                                          functions.subtraiDatas(
                                                              _model
                                                                  .datePicked1!,
                                                              _model
                                                                  .datePicked2!);
                                                      safeSetState(() {});
                                                      FFAppState().contador =
                                                          (FFAppState()
                                                                      .contador /
                                                                  30)
                                                              .truncate();
                                                      safeSetState(() {});
                                                    }
                                                  }

                                                  safeSetState(() {
                                                    _model.textNumLancTextController1
                                                            ?.text =
                                                        FFAppState()
                                                            .contador
                                                            .toString();
                                                    _model.textNumLancTextController1
                                                            ?.selection =
                                                        TextSelection.collapsed(
                                                            offset: _model
                                                                .textNumLancTextController1!
                                                                .text
                                                                .length);
                                                  });
                                                },
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.45,
                                                height: 56.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Recorrência',
                                                searchHintText:
                                                    'Search for an item...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: true,
                                                isMultiSelect: false,
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropTipoValueController1 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: const ['DESPESA', 'RECEITA'],
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                      .dropTipoValue1 = val);
                                                  safeSetState(() {
                                                    _model.textNumLancTextController1
                                                            ?.text =
                                                        functions
                                                            .subtraiDatas(
                                                                _model
                                                                    .datePicked1!,
                                                                _model
                                                                    .datePicked2!)
                                                            .toString();
                                                    _model.textNumLancTextController1
                                                            ?.selection =
                                                        TextSelection.collapsed(
                                                            offset: _model
                                                                .textNumLancTextController1!
                                                                .text
                                                                .length);
                                                  });
                                                },
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.45,
                                                height: 56.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Tipo',
                                                searchHintText:
                                                    'Search for an item...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              StreamBuilder<
                                                  List<ClassificacoesRecord>>(
                                                stream:
                                                    queryClassificacoesRecord(
                                                  queryBuilder:
                                                      (classificacoesRecord) =>
                                                          classificacoesRecord
                                                              .where(
                                                                'TIPO',
                                                                isEqualTo: _model
                                                                    .dropTipoValue1,
                                                              )
                                                              .where(
                                                                'ID',
                                                                isEqualTo:
                                                                    currentUserUid,
                                                              )
                                                              .orderBy(
                                                                  'CLASSIFICACAO'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<ClassificacoesRecord>
                                                      dropClassClassificacoesRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropClassValueController1 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        dropClassClassificacoesRecordList
                                                            .map((e) =>
                                                                e.classificacao)
                                                            .toList()
                                                            .unique((e) => e),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropClassValue1 =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.45,
                                                    height: 56.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'Classificação',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 30.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                              StreamBuilder<
                                                  List<ClassificacoesRecord>>(
                                                stream:
                                                    queryClassificacoesRecord(
                                                  queryBuilder:
                                                      (classificacoesRecord) =>
                                                          classificacoesRecord
                                                              .where(
                                                                'CLASSIFICACAO',
                                                                isEqualTo: _model
                                                                    .dropClassValue1,
                                                              )
                                                              .where(
                                                                'ID',
                                                                isEqualTo:
                                                                    currentUserUid,
                                                              )
                                                              .orderBy(
                                                                  'MOVIMENTO'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<ClassificacoesRecord>
                                                      dropSubClassificacoesRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropSubValueController1 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        dropSubClassificacoesRecordList
                                                            .map((e) =>
                                                                e.movimento)
                                                            .toList()
                                                            .unique((e) => e),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropSubValue1 =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.45,
                                                    height: 56.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'Sub Grupo',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 30.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              StreamBuilder<
                                                  List<CartoesRecord>>(
                                                stream: queryCartoesRecord(
                                                  queryBuilder:
                                                      (cartoesRecord) =>
                                                          cartoesRecord
                                                              .where(
                                                                'ID',
                                                                isEqualTo:
                                                                    currentUserUid,
                                                              )
                                                              .orderBy(
                                                                  'NOMECARTAO'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<CartoesRecord>
                                                      dropCartaoCartoesRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropCartaoValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        dropCartaoCartoesRecordList
                                                            .map((e) =>
                                                                e.nomecartao)
                                                            .toList()
                                                            .unique((e) => e),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropCartaoValue =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.45,
                                                    height: 56.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'Cartão',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 30.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                              SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.45,
                                                height: 54.0,
                                                child: custom_widgets
                                                    .BrasilTextField(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.45,
                                                  height: 54.0,
                                                  value: formatNumber(
                                                    FFAppState().valueDouble,
                                                    formatType:
                                                        FormatType.custom,
                                                    currency: 'R\$ ',
                                                    format: '#,##0.00',
                                                    locale: 'pt_BR',
                                                  ),
                                                  filledColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  fontSize: 14.0,
                                                  colorText:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  hintText: 'Valor',
                                                  borderRadius: 8,
                                                  borderSize: 2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: TextFormField(
                                            controller:
                                                _model.textDescTextController1,
                                            focusNode:
                                                _model.textDescFocusNode1,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Descrição',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Descrição',
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                            maxLines: 2,
                                            maxLength: 200,
                                            validator: _model
                                                .textDescTextController1Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (_model.formKey1
                                                          .currentState ==
                                                      null ||
                                                  !_model.formKey1.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              if (_model.datePicked1 == null) {
                                                return;
                                              }
                                              if (_model.datePicked2 == null) {
                                                return;
                                              }
                                              if (_model.dropRecorValue ==
                                                  null) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Erro'),
                                                      content: const Text(
                                                          'Preencher o campo Recorrência'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                              if (_model.dropTipoValue1 ==
                                                  null) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Erro'),
                                                      content: const Text(
                                                          'Preencher o campo Tipo'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                              if (_model.dropClassValue1 ==
                                                  null) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Erro'),
                                                      content: const Text(
                                                          'Preencher o campo Classificação'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                              if (_model.dropSubValue1 ==
                                                  null) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Erro'),
                                                      content: const Text(
                                                          'Preencher o campo Sub Grupo'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                              if (_model.dropCartaoValue ==
                                                  null) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Erro'),
                                                      content: const Text(
                                                          'Preencher o campo Cartão'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                              FFAppState().contador2 = 0;
                                              safeSetState(() {});
                                              if (_model.dropRecorValue ==
                                                  'DIARIO') {
                                                _model.instantTimer =
                                                    InstantTimer.periodic(
                                                  duration: const Duration(
                                                      milliseconds: 1000),
                                                  callback: (timer) async {
                                                    while (FFAppState()
                                                            .contador2 <
                                                        FFAppState().contador) {
                                                      FFAppState().contador2 =
                                                          FFAppState()
                                                                  .contador2 +
                                                              1;
                                                      safeSetState(() {});

                                                      await MovimentacoesAgendadasRecord
                                                          .collection
                                                          .doc()
                                                          .set(
                                                              createMovimentacoesAgendadasRecordData(
                                                            id: currentUserUid,
                                                            datainput:
                                                                getCurrentTimestamp,
                                                            anoref: functions
                                                                .spliteYear(_model
                                                                    .textDataIniTextController1
                                                                    .text),
                                                            mesref: functions
                                                                .spliteMonth(_model
                                                                    .textDataIniTextController1
                                                                    .text),
                                                            tipo: _model
                                                                .dropTipoValue1,
                                                            classificacao: _model
                                                                .dropClassValue1,
                                                            subgrupo: _model
                                                                .dropSubValue1,
                                                            descricao: _model
                                                                .textDescTextController1
                                                                .text,
                                                            descritivoparc: 0,
                                                            carteira: _model
                                                                .dropCartaoValue,
                                                            valor: FFAppState()
                                                                .valueDouble,
                                                            origem: 'CARTAO',
                                                            valorparc: 0.0,
                                                            fixo: 'SIM',
                                                            parcelado: 'NAO',
                                                          ));
                                                    }
                                                    _model.instantTimer
                                                        ?.cancel();
                                                  },
                                                  startImmediately: true,
                                                );
                                              }
                                            },
                                            text: 'Salvar Lançamento',
                                            options: FFButtonOptions(
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Form(
                                key: _model.formKey2,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: SizedBox(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.45,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .textDataIniTextController2,
                                                    focusNode: _model
                                                        .textDataIniFocusNode2,
                                                    autofocus: true,
                                                    textCapitalization:
                                                        TextCapitalization.none,
                                                    readOnly: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Data Inicio',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: 'Data',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.start,
                                                    keyboardType:
                                                        TextInputType.datetime,
                                                    validator: _model
                                                        .textDataIniTextController2Validator
                                                        .asValidator(context),
                                                    inputFormatters: [
                                                      _model.textDataIniMask2
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 8.0,
                                                    buttonSize: 50.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    icon: Icon(
                                                      Icons.calendar_month,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      final datePicked3Date =
                                                          await showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            getCurrentTimestamp,
                                                        firstDate:
                                                            DateTime(1900),
                                                        lastDate:
                                                            DateTime(2050),
                                                        builder:
                                                            (context, child) {
                                                          return wrapInMaterialDatePickerTheme(
                                                            context,
                                                            child!,
                                                            headerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            headerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            headerTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      fontSize:
                                                                          32.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            pickerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            pickerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            selectedDateTimeBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            selectedDateTimeForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            actionButtonForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            iconSize: 24.0,
                                                          );
                                                        },
                                                      );

                                                      if (datePicked3Date !=
                                                          null) {
                                                        safeSetState(() {
                                                          _model.datePicked3 =
                                                              DateTime(
                                                            datePicked3Date
                                                                .year,
                                                            datePicked3Date
                                                                .month,
                                                            datePicked3Date
                                                                .day,
                                                          );
                                                        });
                                                      }
                                                      safeSetState(() {
                                                        _model.textDataIniTextController2
                                                                ?.text =
                                                            dateTimeFormat(
                                                                "dd/MM/yyyy",
                                                                _model
                                                                    .datePicked3);
                                                        _model.textDataIniTextController2
                                                                ?.selection =
                                                            TextSelection.collapsed(
                                                                offset: _model
                                                                    .textDataIniTextController2!
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: SizedBox(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.45,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .textDataFimTextController2,
                                                    focusNode: _model
                                                        .textDataFimFocusNode2,
                                                    autofocus: true,
                                                    textCapitalization:
                                                        TextCapitalization.none,
                                                    readOnly: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Data Fim',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: 'Data',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.start,
                                                    keyboardType:
                                                        TextInputType.datetime,
                                                    validator: _model
                                                        .textDataFimTextController2Validator
                                                        .asValidator(context),
                                                    inputFormatters: [
                                                      _model.textDataFimMask2
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 8.0,
                                                    buttonSize: 50.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    icon: Icon(
                                                      Icons.calendar_month,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      final datePicked4Date =
                                                          await showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            getCurrentTimestamp,
                                                        firstDate:
                                                            DateTime(1900),
                                                        lastDate:
                                                            DateTime(2050),
                                                        builder:
                                                            (context, child) {
                                                          return wrapInMaterialDatePickerTheme(
                                                            context,
                                                            child!,
                                                            headerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            headerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            headerTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      fontSize:
                                                                          32.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            pickerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            pickerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            selectedDateTimeBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            selectedDateTimeForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            actionButtonForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            iconSize: 24.0,
                                                          );
                                                        },
                                                      );

                                                      if (datePicked4Date !=
                                                          null) {
                                                        safeSetState(() {
                                                          _model.datePicked4 =
                                                              DateTime(
                                                            datePicked4Date
                                                                .year,
                                                            datePicked4Date
                                                                .month,
                                                            datePicked4Date
                                                                .day,
                                                          );
                                                        });
                                                      }
                                                      safeSetState(() {
                                                        _model.textDataFimTextController2
                                                                ?.text =
                                                            dateTimeFormat(
                                                                "dd/MM/yyyy",
                                                                _model
                                                                    .datePicked4);
                                                        _model.textDataFimTextController2
                                                                ?.selection =
                                                            TextSelection.collapsed(
                                                                offset: _model
                                                                    .textDataFimTextController2!
                                                                    .text
                                                                    .length);
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: SizedBox(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textNumLancTextController2,
                                                      focusNode: _model
                                                          .textNumLancFocusNode2,
                                                      autofocus: true,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      readOnly: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Total Lanç.',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      keyboardType:
                                                          TextInputType
                                                              .datetime,
                                                      validator: _model
                                                          .textNumLancTextController2Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model.textNumLancMask2
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropRecorContaValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: const [
                                                  'DIARIO',
                                                  'SEMANAL',
                                                  'MENSAL'
                                                ],
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                          .dropRecorContaValue =
                                                      val);
                                                  FFAppState().contador = 0;
                                                  safeSetState(() {});
                                                  if (_model
                                                          .dropRecorContaValue ==
                                                      'DIARIO') {
                                                    FFAppState().contador =
                                                        functions.subtraiDatas(
                                                            _model.datePicked3!,
                                                            _model
                                                                .datePicked4!);
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                            .dropRecorContaValue ==
                                                        'SEMANAL') {
                                                      FFAppState().contador =
                                                          functions.subtraiDatas(
                                                              _model
                                                                  .datePicked3!,
                                                              _model
                                                                  .datePicked4!);
                                                      safeSetState(() {});
                                                      FFAppState().contador =
                                                          (FFAppState()
                                                                      .contador /
                                                                  7)
                                                              .truncate();
                                                      safeSetState(() {});
                                                    } else {
                                                      if (_model
                                                              .dropRecorContaValue ==
                                                          'MENSAL') {
                                                        FFAppState().contador =
                                                            functions.subtraiDatas(
                                                                _model
                                                                    .datePicked3!,
                                                                _model
                                                                    .datePicked4!);
                                                        safeSetState(() {});
                                                        FFAppState().contador =
                                                            (FFAppState()
                                                                        .contador /
                                                                    30)
                                                                .truncate();
                                                        safeSetState(() {});
                                                      } else {
                                                        FFAppState().contador =
                                                            0;
                                                        safeSetState(() {});
                                                      }
                                                    }
                                                  }

                                                  safeSetState(() {
                                                    _model.textNumLancTextController2
                                                            ?.text =
                                                        FFAppState()
                                                            .contador
                                                            .toString();
                                                    _model.textNumLancTextController2
                                                            ?.selection =
                                                        TextSelection.collapsed(
                                                            offset: _model
                                                                .textNumLancTextController2!
                                                                .text
                                                                .length);
                                                  });
                                                },
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.45,
                                                height: 56.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Recorrência',
                                                searchHintText:
                                                    'Search for an item...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: true,
                                                isMultiSelect: false,
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropTipoValueController2 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: const ['DESPESA', 'RECEITA'],
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                        .dropTipoValue2 = val),
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.45,
                                                height: 56.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Tipo',
                                                searchHintText:
                                                    'Search for an item...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              StreamBuilder<
                                                  List<ClassificacoesRecord>>(
                                                stream:
                                                    queryClassificacoesRecord(
                                                  queryBuilder:
                                                      (classificacoesRecord) =>
                                                          classificacoesRecord
                                                              .where(
                                                                'TIPO',
                                                                isEqualTo: _model
                                                                    .dropTipoValue2,
                                                              )
                                                              .where(
                                                                'ID',
                                                                isEqualTo:
                                                                    currentUserUid,
                                                              )
                                                              .orderBy(
                                                                  'CLASSIFICACAO'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<ClassificacoesRecord>
                                                      dropClassClassificacoesRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropClassValueController2 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        dropClassClassificacoesRecordList
                                                            .map((e) =>
                                                                e.classificacao)
                                                            .toList()
                                                            .unique((e) => e),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropClassValue2 =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.45,
                                                    height: 56.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'Classificação',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 30.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                              StreamBuilder<
                                                  List<ClassificacoesRecord>>(
                                                stream:
                                                    queryClassificacoesRecord(
                                                  queryBuilder:
                                                      (classificacoesRecord) =>
                                                          classificacoesRecord
                                                              .where(
                                                                'CLASSIFICACAO',
                                                                isEqualTo: _model
                                                                    .dropClassValue2,
                                                              )
                                                              .where(
                                                                'ID',
                                                                isEqualTo:
                                                                    currentUserUid,
                                                              )
                                                              .orderBy(
                                                                  'MOVIMENTO'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<ClassificacoesRecord>
                                                      dropSubClassificacoesRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropSubValueController2 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        dropSubClassificacoesRecordList
                                                            .map((e) =>
                                                                e.movimento)
                                                            .toList()
                                                            .unique((e) => e),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropSubValue2 =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.45,
                                                    height: 56.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'Sub Grupo',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 30.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              StreamBuilder<
                                                  List<CarteirasRecord>>(
                                                stream: queryCarteirasRecord(
                                                  queryBuilder:
                                                      (carteirasRecord) =>
                                                          carteirasRecord
                                                              .where(
                                                                'ID',
                                                                isEqualTo:
                                                                    currentUserUid,
                                                              )
                                                              .orderBy(
                                                                  'NOMECARTEIRA'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<CarteirasRecord>
                                                      dropContaCarteirasRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropContaValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        dropContaCarteirasRecordList
                                                            .map((e) =>
                                                                e.nomecarteira)
                                                            .toList()
                                                            .unique((e) => e),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropContaValue =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.45,
                                                    height: 56.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'Conta',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 30.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                              SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.45,
                                                height: 54.0,
                                                child: custom_widgets
                                                    .BrasilTextField(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.45,
                                                  height: 54.0,
                                                  value: formatNumber(
                                                    FFAppState().valueDouble,
                                                    formatType:
                                                        FormatType.custom,
                                                    currency: 'R\$ ',
                                                    format: '#,##0.00',
                                                    locale: 'pt_BR',
                                                  ),
                                                  filledColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  fontSize: 14.0,
                                                  colorText:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  hintText: 'Valor',
                                                  borderRadius: 8,
                                                  borderSize: 2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: TextFormField(
                                            controller:
                                                _model.textDescTextController2,
                                            focusNode:
                                                _model.textDescFocusNode2,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Descrição',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Descrição',
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                            maxLines: 2,
                                            maxLength: 200,
                                            validator: _model
                                                .textDescTextController2Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (_model.formKey2
                                                          .currentState ==
                                                      null ||
                                                  !_model.formKey2.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              if (_model.datePicked3 == null) {
                                                return;
                                              }
                                              if (_model.datePicked4 == null) {
                                                return;
                                              }
                                              if (_model.dropRecorContaValue ==
                                                  null) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Erro'),
                                                      content: const Text(
                                                          'Preencher o campo Recorrência'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                              if (_model.dropTipoValue2 ==
                                                  null) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Erro'),
                                                      content: const Text(
                                                          'Preencher o campo Tipo'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                              if (_model.dropClassValue2 ==
                                                  null) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Erro'),
                                                      content: const Text(
                                                          'Preencher o campo Classificação'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                              if (_model.dropSubValue2 ==
                                                  null) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Erro'),
                                                      content: const Text(
                                                          'Preencher o campo Sub Grupo'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                              if (_model.dropContaValue ==
                                                  null) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Erro'),
                                                      content: const Text(
                                                          'Preencher o campo Conta'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                              FFAppState().contador2 = 0;
                                              safeSetState(() {});
                                              _model.dtRefAtualizada =
                                                  getCurrentTimestamp;
                                              safeSetState(() {});
                                              if (_model.dropRecorContaValue ==
                                                  'DIARIO') {
                                                while (FFAppState().contador2 <
                                                    FFAppState().contador) {
                                                  await MovimentacoesAgendadasRecord
                                                      .collection
                                                      .doc()
                                                      .set(
                                                          createMovimentacoesAgendadasRecordData(
                                                        id: currentUserUid,
                                                        datainput:
                                                            getCurrentTimestamp,
                                                        anoref: functions
                                                            .spliteYear(_model
                                                                .textDataIniTextController2
                                                                .text),
                                                        mesref: functions
                                                            .spliteMonth(_model
                                                                .textDataIniTextController2
                                                                .text),
                                                        tipo: _model
                                                            .dropTipoValue2,
                                                        classificacao: _model
                                                            .dropClassValue2,
                                                        subgrupo: _model
                                                            .dropSubValue2,
                                                        descricao: _model
                                                            .textDescTextController2
                                                            .text,
                                                        descritivoparc: 0,
                                                        carteira: _model
                                                            .dropContaValue,
                                                        valor: FFAppState()
                                                            .valueDouble,
                                                        origem: 'CARTEIRA',
                                                        valorparc: 0.0,
                                                        fixo: 'SIM',
                                                        parcelado: 'NAO',
                                                        data: _model
                                                            .textDataIniTextController1
                                                            .text,
                                                        faturaref: '-',
                                                        datacalc: functions
                                                            .somarDatas(
                                                                FFAppState()
                                                                    .contador2,
                                                                getCurrentTimestamp),
                                                      ));
                                                  FFAppState().contador2 =
                                                      FFAppState().contador2 +
                                                          1;
                                                  safeSetState(() {});
                                                }
                                              } else {
                                                if (_model
                                                        .dropRecorContaValue ==
                                                    'SEMANAL') {
                                                  while (FFAppState()
                                                          .contador2 <
                                                      FFAppState().contador) {
                                                    await MovimentacoesAgendadasRecord
                                                        .collection
                                                        .doc()
                                                        .set(
                                                            createMovimentacoesAgendadasRecordData(
                                                          id: currentUserUid,
                                                          datainput:
                                                              getCurrentTimestamp,
                                                          anoref: functions
                                                              .spliteYear(_model
                                                                  .textDataIniTextController2
                                                                  .text),
                                                          mesref: functions
                                                              .spliteMonth(_model
                                                                  .textDataIniTextController2
                                                                  .text),
                                                          tipo: _model
                                                              .dropTipoValue2,
                                                          classificacao: _model
                                                              .dropClassValue2,
                                                          subgrupo: _model
                                                              .dropSubValue2,
                                                          descricao: _model
                                                              .textDescTextController2
                                                              .text,
                                                          descritivoparc: 0,
                                                          carteira: _model
                                                              .dropContaValue,
                                                          valor: FFAppState()
                                                              .valueDouble,
                                                          origem: 'CARTEIRA',
                                                          valorparc: 0.0,
                                                          fixo: 'SIM',
                                                          parcelado: 'NAO',
                                                          data: _model
                                                              .textDataIniTextController1
                                                              .text,
                                                          faturaref: '-',
                                                          datacalc: functions
                                                              .somarDatas(7,
                                                                  getCurrentTimestamp),
                                                        ));
                                                    FFAppState().contador2 =
                                                        FFAppState().contador2 +
                                                            1;
                                                    safeSetState(() {});
                                                    _model.dtRefAtualizada =
                                                        functions.somarDatas(
                                                            7,
                                                            _model
                                                                .dtRefAtualizada!);
                                                    safeSetState(() {});
                                                  }
                                                } else {
                                                  while (FFAppState()
                                                          .contador2 <
                                                      FFAppState().contador) {
                                                    await MovimentacoesAgendadasRecord
                                                        .collection
                                                        .doc()
                                                        .set(
                                                            createMovimentacoesAgendadasRecordData(
                                                          id: currentUserUid,
                                                          datainput:
                                                              getCurrentTimestamp,
                                                          anoref: functions
                                                              .spliteYear(_model
                                                                  .textDataIniTextController2
                                                                  .text),
                                                          mesref: functions
                                                              .spliteMonth(_model
                                                                  .textDataIniTextController2
                                                                  .text),
                                                          tipo: _model
                                                              .dropTipoValue2,
                                                          classificacao: _model
                                                              .dropClassValue2,
                                                          subgrupo: _model
                                                              .dropSubValue2,
                                                          descricao: _model
                                                              .textDescTextController2
                                                              .text,
                                                          descritivoparc: 0,
                                                          carteira: _model
                                                              .dropContaValue,
                                                          valor: FFAppState()
                                                              .valueDouble,
                                                          origem: 'CARTEIRA',
                                                          valorparc: 0.0,
                                                          fixo: 'SIM',
                                                          parcelado: 'NAO',
                                                          data: _model
                                                              .textDataIniTextController1
                                                              .text,
                                                          faturaref: '-',
                                                          datacalc: _model
                                                              .dtRefAtualizada,
                                                        ));
                                                    FFAppState().contador2 =
                                                        FFAppState().contador2 +
                                                            1;
                                                    safeSetState(() {});
                                                    _model.dtRefAtualizada =
                                                        functions.somarDatas(
                                                            30,
                                                            _model
                                                                .dtRefAtualizada!);
                                                    safeSetState(() {});
                                                  }
                                                }
                                              }

                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Lançamento incluído com sucesso!',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                ),
                                              );
                                              FFAppState().valueDouble = 0.0;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                  'cria_LancamentoFixo');
                                            },
                                            text: 'Salvar Lançamento',
                                            options: FFButtonOptions(
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
