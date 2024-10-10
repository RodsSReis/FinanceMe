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
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'saldo_cartao_model.dart';
export 'saldo_cartao_model.dart';

class SaldoCartaoWidget extends StatefulWidget {
  const SaldoCartaoWidget({super.key});

  @override
  State<SaldoCartaoWidget> createState() => _SaldoCartaoWidgetState();
}

class _SaldoCartaoWidgetState extends State<SaldoCartaoWidget> {
  late SaldoCartaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaldoCartaoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().popup = false;
      safeSetState(() {});
      FFAppState().popup2 = false;
      safeSetState(() {});
      _model.valorTotal = 0.0;
      safeSetState(() {});
      await Future.wait([
        Future(() async {
          safeSetState(() {
            _model.dropFatAtuValueController?.reset();
            _model.dropTipoValueController?.reset();
            _model.dropClassValueController?.reset();
            _model.dropCartValueController?.reset();
            _model.dropFixoValueController?.reset();
            _model.dropParcValueController?.reset();
            _model.dropSubValueController?.reset();
            _model.dropFatRefValueController?.reset();
          });
        }),
        Future(() async {
          safeSetState(() {
            _model.textNumParcTextController?.text = '0';
            _model.textDescrTextController?.clear();
            _model.textMesRefTextController?.text = '0';
            _model.textDataTextController?.clear();
          });
        }),
      ]);
    });

    _model.textDataTextController ??= TextEditingController();
    _model.textDataFocusNode ??= FocusNode();

    _model.textMesRefTextController ??= TextEditingController(text: '0');
    _model.textMesRefFocusNode ??= FocusNode();

    _model.textNumParcTextController ??= TextEditingController(text: '0');
    _model.textNumParcFocusNode ??= FocusNode();

    _model.textDescrTextController ??= TextEditingController();
    _model.textDescrFocusNode ??= FocusNode();

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
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Saldos Cartão',
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
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        2.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Mês Referência da Fatura:',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child:
                                      StreamBuilder<List<MovimentacoesRecord>>(
                                    stream: queryMovimentacoesRecord(
                                      queryBuilder: (movimentacoesRecord) =>
                                          movimentacoesRecord
                                              .where(
                                                'ID',
                                                isEqualTo: currentUserUid,
                                              )
                                              .where(
                                                'ORIGEM',
                                                isEqualTo: 'CARTAO',
                                              )
                                              .orderBy('FATURAREF',
                                                  descending: true),
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
                                      List<MovimentacoesRecord>
                                          dropFatRefMovimentacoesRecordList =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropFatRefValueController ??=
                                            FormFieldController<String>(null),
                                        options:
                                            dropFatRefMovimentacoesRecordList
                                                .map((e) => e.faturaref)
                                                .toList()
                                                .unique((e) => e),
                                        onChanged: (val) => safeSetState(
                                            () => _model.dropFatRefValue = val),
                                        width: 150.0,
                                        height: 40.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Selecione ...',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 0.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 120.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: StreamBuilder<List<CartoesRecord>>(
                                    stream: queryCartoesRecord(
                                      queryBuilder: (cartoesRecord) =>
                                          cartoesRecord
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
                                          listViewCartoesRecordList =
                                          snapshot.data!;

                                      return ListView.separated(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            listViewCartoesRecordList.length,
                                        separatorBuilder: (_, __) =>
                                            const SizedBox(width: 5.0),
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewCartoesRecord =
                                              listViewCartoesRecordList[
                                                  listViewIndex];
                                          return Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, -1.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: GradientText(
                                                              listViewCartoesRecord
                                                                  .nomecartao
                                                                  .maybeHandleOverflow(
                                                                      maxChars:
                                                                          20),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    lineHeight:
                                                                        2.0,
                                                                  ),
                                                              colors: [
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary
                                                              ],
                                                              gradientDirection:
                                                                  GradientDirection
                                                                      .ltr,
                                                              gradientType:
                                                                  GradientType
                                                                      .linear,
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.outRec =
                                                                      await queryMovimentacoesRecordOnce(
                                                                    queryBuilder: (movimentacoesRecord) => movimentacoesRecord
                                                                        .where(
                                                                          'TIPO',
                                                                          isEqualTo:
                                                                              'RECEITA',
                                                                        )
                                                                        .where(
                                                                          'CARTEIRA',
                                                                          isEqualTo:
                                                                              listViewCartoesRecord.nomecartao,
                                                                        )
                                                                        .where(
                                                                          'ORIGEM',
                                                                          isEqualTo:
                                                                              'CARTAO',
                                                                        )
                                                                        .where(
                                                                          'FATURAREF',
                                                                          isEqualTo:
                                                                              _model.dropFatRefValue,
                                                                        )
                                                                        .where(
                                                                          'ID',
                                                                          isEqualTo:
                                                                              currentUserUid,
                                                                        ),
                                                                  );
                                                                  _model.outDesp =
                                                                      await queryMovimentacoesRecordOnce(
                                                                    queryBuilder: (movimentacoesRecord) => movimentacoesRecord
                                                                        .where(
                                                                          'TIPO',
                                                                          isEqualTo:
                                                                              'DESPESA',
                                                                        )
                                                                        .where(
                                                                          'CARTEIRA',
                                                                          isEqualTo:
                                                                              listViewCartoesRecord.nomecartao,
                                                                        )
                                                                        .where(
                                                                          'ORIGEM',
                                                                          isEqualTo:
                                                                              'CARTAO',
                                                                        )
                                                                        .where(
                                                                          'FATURAREF',
                                                                          isEqualTo:
                                                                              _model.dropFatRefValue,
                                                                        )
                                                                        .where(
                                                                          'ID',
                                                                          isEqualTo:
                                                                              currentUserUid,
                                                                        ),
                                                                  );
                                                                  await Future
                                                                      .wait([
                                                                    Future(
                                                                        () async {
                                                                      _model.minhasReceitas = _model
                                                                          .outRec!
                                                                          .map((e) =>
                                                                              valueOrDefault<double>(
                                                                                e.valor,
                                                                                0.0,
                                                                              ))
                                                                          .toList()
                                                                          .cast<double>();
                                                                      safeSetState(
                                                                          () {});
                                                                    }),
                                                                    Future(
                                                                        () async {
                                                                      _model.minhasDespesas = _model
                                                                          .outDesp!
                                                                          .map((e) =>
                                                                              valueOrDefault<double>(
                                                                                e.valor,
                                                                                0.0,
                                                                              ))
                                                                          .toList()
                                                                          .cast<double>();
                                                                      safeSetState(
                                                                          () {});
                                                                    }),
                                                                  ]);
                                                                  _model.resultado =
                                                                      valueOrDefault<
                                                                          double>(
                                                                    valueOrDefault<
                                                                            double>(
                                                                          functions.somarValoresDaLista(_model
                                                                              .minhasReceitas
                                                                              .toList()),
                                                                          0.0,
                                                                        ) -
                                                                        valueOrDefault<
                                                                            double>(
                                                                          functions.somarValoresDaLista(_model
                                                                              .minhasDespesas
                                                                              .toList()),
                                                                          0.0,
                                                                        ),
                                                                    0.0,
                                                                  );
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.outGeral =
                                                                      await queryMovimentacoesRecordOnce(
                                                                    queryBuilder: (movimentacoesRecord) => movimentacoesRecord
                                                                        .where(
                                                                          'CARTEIRA',
                                                                          isEqualTo:
                                                                              listViewCartoesRecord.nomecartao,
                                                                        )
                                                                        .where(
                                                                          'FATURAREF',
                                                                          isEqualTo:
                                                                              _model.dropFatRefValue,
                                                                        )
                                                                        .where(
                                                                          'ORIGEM',
                                                                          isEqualTo:
                                                                              'CARTAO',
                                                                        )
                                                                        .where(
                                                                          'ID',
                                                                          isEqualTo:
                                                                              currentUserUid,
                                                                        )
                                                                        .orderBy('DATACALC'),
                                                                  );

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .list_alt,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  size: 25.0,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    GradientText(
                                                                  'Extrato',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  colors: [
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary
                                                                  ],
                                                                  gradientDirection:
                                                                      GradientDirection
                                                                          .ltr,
                                                                  gradientType:
                                                                      GradientType
                                                                          .linear,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                          .popup =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  FFAppState()
                                                                          .popup2 =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons.add_box,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  size: 25.0,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    GradientText(
                                                                  'Incluir',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  colors: [
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary
                                                                  ],
                                                                  gradientDirection:
                                                                      GradientDirection
                                                                          .ltr,
                                                                  gradientType:
                                                                      GradientType
                                                                          .linear,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              if (FFAppState().popup == true)
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 580.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Text(
                                    ' Lançamento:',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        2.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
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
                                            FFAppState().popup = false;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.4,
                                        child: TextFormField(
                                          controller:
                                              _model.textDataTextController,
                                          focusNode: _model.textDataFocusNode,
                                          autofocus: true,
                                          textCapitalization:
                                              TextCapitalization.none,
                                          readOnly: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Data',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Data',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                          inputFormatters: [
                                            _model.textDataMask
                                          ],
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
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        icon: Icon(
                                          Icons.calendar_month,
                                          color:
                                              FlutterFlowTheme.of(context).info,
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
                                            _model.textDataTextController
                                                    ?.text =
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
                                  0.0, 10.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropFatAtuValueController ??=
                                            FormFieldController<String>(null),
                                    options: const ['NAO', 'SIM'],
                                    onChanged: (val) async {
                                      safeSetState(
                                          () => _model.dropFatAtuValue = val);
                                      if (_model.dropFatAtuValue == 'SIM') {
                                        _model.mesRefInicial =
                                            functions.trataMesRefCartao(
                                                functions.spliteMonth(_model
                                                    .textDataTextController
                                                    .text),
                                                valueOrDefault<int>(
                                                  functions.spliteMonthDigitos(
                                                      _model
                                                          .textDataTextController
                                                          .text),
                                                  0,
                                                ),
                                                0);
                                        safeSetState(() {});
                                      } else {
                                        _model.mesRefInicial =
                                            functions.trataMesRefCartao(
                                                functions.spliteMonth(_model
                                                    .textDataTextController
                                                    .text),
                                                functions.spliteMonthDigitos(
                                                    _model
                                                        .textDataTextController
                                                        .text),
                                                1);
                                        safeSetState(() {});
                                      }

                                      safeSetState(() {
                                        _model.textMesRefTextController?.text =
                                            _model.mesRefInicial;
                                        _model.textMesRefTextController
                                                ?.selection =
                                            TextSelection.collapsed(
                                                offset: _model
                                                    .textMesRefTextController!
                                                    .text
                                                    .length);
                                      });
                                    },
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    height: 40.0,
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
                                    hintText: 'Fatura Atual?',
                                    searchHintText: 'Search for an item...',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 32.0,
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
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    child: TextFormField(
                                      controller:
                                          _model.textMesRefTextController,
                                      focusNode: _model.textMesRefFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Alterar Fatura?',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'TextField',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .textMesRefTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropTipoValueController ??=
                                            FormFieldController<String>(null),
                                    options: const ['DESPESA', 'RECEITA'],
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropTipoValue = val),
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Tipo',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  StreamBuilder<List<MovimentacoesRecord>>(
                                    stream: queryMovimentacoesRecord(
                                      queryBuilder: (movimentacoesRecord) =>
                                          movimentacoesRecord
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
                                      List<MovimentacoesRecord>
                                          dropClassMovimentacoesRecordList =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropClassValueController ??=
                                            FormFieldController<String>(null),
                                        options:
                                            dropClassMovimentacoesRecordList
                                                .map((e) => e.classificacao)
                                                .toList()
                                                .unique((e) => e),
                                        onChanged: (val) => safeSetState(
                                            () => _model.dropClassValue = val),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.4,
                                        height: 40.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Classificação',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 0.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  StreamBuilder<List<MovimentacoesRecord>>(
                                    stream: queryMovimentacoesRecord(
                                      queryBuilder: (movimentacoesRecord) =>
                                          movimentacoesRecord
                                              .where(
                                                'CLASSIFICACAO',
                                                isEqualTo:
                                                    _model.dropClassValue,
                                              )
                                              .where(
                                                'ID',
                                                isEqualTo: currentUserUid,
                                              )
                                              .orderBy('SUBGRUPO'),
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
                                      List<MovimentacoesRecord>
                                          dropSubMovimentacoesRecordList =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropSubValueController ??=
                                            FormFieldController<String>(null),
                                        options: dropSubMovimentacoesRecordList
                                            .map((e) => e.subgrupo)
                                            .toList()
                                            .unique((e) => e),
                                        onChanged: (val) => safeSetState(
                                            () => _model.dropSubValue = val),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.4,
                                        height: 40.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Sub Grupo',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 0.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                  StreamBuilder<List<CartoesRecord>>(
                                    stream: queryCartoesRecord(
                                      queryBuilder: (cartoesRecord) =>
                                          cartoesRecord
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
                                          dropCartCartoesRecordList =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropCartValueController ??=
                                            FormFieldController<String>(null),
                                        options: dropCartCartoesRecordList
                                            .map((e) => e.nomecartao)
                                            .toList()
                                            .unique((e) => e),
                                        onChanged: (val) => safeSetState(
                                            () => _model.dropCartValue = val),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.4,
                                        height: 40.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Cartão',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 0.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropFixoValueController ??=
                                            FormFieldController<String>(null),
                                    options: const ['NAO', 'SIM'],
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropFixoValue = val),
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.29,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Fixo',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropParcValueController ??=
                                            FormFieldController<String>(null),
                                    options: const ['NAO', 'SIM'],
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropParcValue = val),
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.29,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Parcelado',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.29,
                                    child: TextFormField(
                                      controller:
                                          _model.textNumParcTextController,
                                      focusNode: _model.textNumParcFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Nº Parc.',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'TextField',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .textNumParcTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    height: 40.0,
                                    child: custom_widgets.BrasilTextField(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      height: 40.0,
                                      value:
                                          FFAppState().valueDouble.toString(),
                                      filledColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 14.0,
                                      colorText: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      hintText: 'Valor',
                                      borderRadius: 8,
                                      borderSize: 2,
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Valor Total',
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.valorTotal = int.parse(_model
                                              .textNumParcTextController.text) *
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      child: TextFormField(
                                        controller:
                                            _model.textDescrTextController,
                                        focusNode: _model.textDescrFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Descrição',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'TextField',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        maxLines: 2,
                                        maxLength: 200,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .textDescrTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (FFAppState().popup2 == true)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        if (_model.datePicked == null) {
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
                                        if (_model.dropTipoValue == null) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
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
                                        if (_model.dropSubValue == null) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
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
                                        if (_model.dropCartValue == null) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
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
                                        if (_model.dropFixoValue == null) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: const Text('Erro'),
                                                content: const Text(
                                                    'Preencher o campo Fixo'),
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
                                        if (_model.dropParcValue == null) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: const Text('Erro'),
                                                content: const Text(
                                                    'Preencher o campo Parcelado'),
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
                                        if (_model.dropParcValue == 'SIM') {
                                          if (_model.dropFatAtuValue == 'SIM') {
                                            FFAppState().contador = -1;
                                            safeSetState(() {});
                                            FFAppState().contador2 = int.parse(
                                                _model.textNumParcTextController
                                                    .text);
                                            safeSetState(() {});
                                            FFAppState().contador2 =
                                                FFAppState().contador2 + -1;
                                            safeSetState(() {});
                                            _model.instantTimer =
                                                InstantTimer.periodic(
                                              duration:
                                                  const Duration(milliseconds: 1000),
                                              callback: (timer) async {
                                                while (FFAppState().contador <
                                                    FFAppState().contador2) {
                                                  FFAppState().contador =
                                                      FFAppState().contador + 1;
                                                  safeSetState(() {});

                                                  await MovimentacoesRecord
                                                      .collection
                                                      .doc()
                                                      .set({
                                                    ...createMovimentacoesRecordData(
                                                      tipo:
                                                          _model.dropTipoValue,
                                                      classificacao:
                                                          _model.dropClassValue,
                                                      subgrupo:
                                                          _model.dropSubValue,
                                                      descricao: _model
                                                          .textDescrTextController
                                                          .text,
                                                      carteira:
                                                          _model.dropCartValue,
                                                      anoref: functions
                                                          .spliteYear(_model
                                                              .textDataTextController
                                                              .text),
                                                      mesref: functions
                                                          .spliteMonth(_model
                                                              .textDataTextController
                                                              .text),
                                                      data: _model
                                                          .textDataTextController
                                                          .text,
                                                      origem: 'CARTAO',
                                                      fixo:
                                                          _model.dropFixoValue,
                                                      parcelado:
                                                          _model.dropParcValue,
                                                      datacalc:
                                                          _model.datePicked,
                                                      valor: FFAppState()
                                                          .valueDouble,
                                                      valorparc:
                                                          _model.valorTotal,
                                                      descritivoparc:
                                                          FFAppState().contador,
                                                      faturaref: functions.trataMesRefCartao(
                                                          functions.spliteMonth(
                                                              _model
                                                                  .textDataTextController
                                                                  .text),
                                                          functions
                                                              .spliteMonthDigitos(
                                                                  _model
                                                                      .textDataTextController
                                                                      .text),
                                                          FFAppState()
                                                              .contador),
                                                      id: currentUserUid,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'DATAINPUT': FieldValue
                                                            .serverTimestamp(),
                                                      },
                                                    ),
                                                  });
                                                }
                                                _model.instantTimer?.cancel();
                                              },
                                              startImmediately: true,
                                            );
                                          } else {
                                            FFAppState().contador = 0;
                                            safeSetState(() {});
                                            FFAppState().contador2 = int.parse(
                                                _model.textNumParcTextController
                                                    .text);
                                            safeSetState(() {});
                                            _model.instantTimer2 =
                                                InstantTimer.periodic(
                                              duration:
                                                  const Duration(milliseconds: 1000),
                                              callback: (timer) async {
                                                while (FFAppState().contador <
                                                    FFAppState().contador2) {
                                                  FFAppState().contador =
                                                      FFAppState().contador + 1;
                                                  safeSetState(() {});

                                                  await MovimentacoesRecord
                                                      .collection
                                                      .doc()
                                                      .set({
                                                    ...createMovimentacoesRecordData(
                                                      id: currentUserUid,
                                                      tipo:
                                                          _model.dropTipoValue,
                                                      classificacao:
                                                          _model.dropClassValue,
                                                      subgrupo:
                                                          _model.dropSubValue,
                                                      descricao: _model
                                                          .textDescrTextController
                                                          .text,
                                                      carteira:
                                                          _model.dropCartValue,
                                                      anoref: functions
                                                          .spliteYear(_model
                                                              .textDataTextController
                                                              .text),
                                                      mesref: functions
                                                          .spliteMonth(_model
                                                              .textDataTextController
                                                              .text),
                                                      data: _model
                                                          .textDataTextController
                                                          .text,
                                                      origem: 'CARTAO',
                                                      fixo:
                                                          _model.dropFixoValue,
                                                      parcelado:
                                                          _model.dropParcValue,
                                                      datacalc:
                                                          _model.datePicked,
                                                      valor: FFAppState()
                                                          .valueDouble,
                                                      valorparc:
                                                          _model.valorTotal,
                                                      descritivoparc:
                                                          FFAppState().contador,
                                                      faturaref: functions.trataMesRefCartao(
                                                          functions.spliteMonth(
                                                              _model
                                                                  .textDataTextController
                                                                  .text),
                                                          functions
                                                              .spliteMonthDigitos(
                                                                  _model
                                                                      .textDataTextController
                                                                      .text),
                                                          FFAppState()
                                                              .contador),
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'DATAINPUT': FieldValue
                                                            .serverTimestamp(),
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
                                                classificacao:
                                                    _model.dropClassValue,
                                                subgrupo: _model.dropSubValue,
                                                descricao: _model
                                                    .textDescrTextController
                                                    .text,
                                                carteira: _model.dropCartValue,
                                                descritivoparc: 0,
                                                anoref: functions.spliteYear(
                                                    _model
                                                        .textDataTextController
                                                        .text),
                                                mesref: functions.spliteMonth(
                                                    _model
                                                        .textDataTextController
                                                        .text),
                                                data: _model
                                                    .textDataTextController
                                                    .text,
                                                origem: 'CARTAO',
                                                fixo: _model.dropFixoValue,
                                                parcelado: _model.dropParcValue,
                                                datacalc: _model.datePicked,
                                                valor: FFAppState().valueDouble,
                                                faturaref: functions.trataMesRefCartao(
                                                    functions.spliteMonth(_model
                                                        .textDataTextController
                                                        .text),
                                                    functions.spliteMonthDigitos(
                                                        _model
                                                            .textDataTextController
                                                            .text),
                                                    0),
                                                valorparc: 0.0,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'DATAINPUT': FieldValue
                                                      .serverTimestamp(),
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
                                                classificacao:
                                                    _model.dropClassValue,
                                                subgrupo: _model.dropSubValue,
                                                descricao: _model
                                                    .textDescrTextController
                                                    .text,
                                                carteira: _model.dropCartValue,
                                                descritivoparc: 0,
                                                anoref: functions.spliteYear(
                                                    _model
                                                        .textDataTextController
                                                        .text),
                                                mesref: functions.spliteMonth(
                                                    _model
                                                        .textDataTextController
                                                        .text),
                                                data: _model
                                                    .textDataTextController
                                                    .text,
                                                origem: 'CARTAO',
                                                fixo: _model.dropFixoValue,
                                                parcelado: _model.dropParcValue,
                                                datacalc: _model.datePicked,
                                                valor: FFAppState().valueDouble,
                                                faturaref: functions.trataMesRefCartao(
                                                    functions.spliteMonth(_model
                                                        .textDataTextController
                                                        .text),
                                                    functions.spliteMonthDigitos(
                                                        _model
                                                            .textDataTextController
                                                            .text),
                                                    1),
                                                valorparc: 0.0,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'DATAINPUT': FieldValue
                                                      .serverTimestamp(),
                                                },
                                              ),
                                            });
                                          }
                                        }

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Lançamento incluído com sucesso!',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .success,
                                          ),
                                        );

                                        context.pushNamed('saldo_Cartao');
                                      },
                                      text: 'Salvar Novo',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                if (FFAppState().popup2 == false)
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if (_model.formKey.currentState ==
                                                  null ||
                                              !_model.formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          if (_model.datePicked == null) {
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
                                          if (_model.dropTipoValue == null) {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
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
                                          if (_model.dropSubValue == null) {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
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
                                          if (_model.dropCartValue == null) {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
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
                                          if (_model.dropFixoValue == null) {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('Erro'),
                                                  content: const Text(
                                                      'Preencher o campo Fixo'),
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
                                          if (_model.dropParcValue == null) {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('Erro'),
                                                  content: const Text(
                                                      'Preencher o campo Parcelado'),
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

                                          await _model.outFiltrado!.reference
                                              .update(
                                                  createMovimentacoesRecordData(
                                            datainput: getCurrentTimestamp,
                                            data: _model
                                                .textDataTextController.text,
                                            tipo: _model.dropTipoValue,
                                            classificacao:
                                                _model.dropClassValue,
                                            subgrupo: _model.dropSubValue,
                                            carteira: _model.dropCartValue,
                                            descricao: _model
                                                .textDescrTextController.text,
                                            id: currentUserUid,
                                            anoref: functions.spliteYear(_model
                                                .textDataTextController.text),
                                            mesref: functions.spliteMonth(_model
                                                .textDataTextController.text),
                                            descritivoparc: int.tryParse(_model
                                                .textNumParcTextController
                                                .text),
                                            origem: 'CARTAO',
                                            valorparc: _model.valorTotal,
                                            fixo: _model.dropFixoValue,
                                            parcelado: _model.dropParcValue,
                                            datacalc: _model.datePicked,
                                            valor: FFAppState().valueDouble,
                                            faturaref: _model
                                                .textMesRefTextController.text,
                                          ));
                                          await Future.wait([
                                            Future(() async {
                                              safeSetState(() {
                                                _model.dropTipoValueController
                                                    ?.reset();
                                                _model.dropClassValueController
                                                    ?.reset();
                                                _model.dropSubValueController
                                                    ?.reset();
                                                _model.dropCartValueController
                                                    ?.reset();
                                                _model.dropFixoValueController
                                                    ?.reset();
                                                _model.dropParcValueController
                                                    ?.reset();
                                                _model.dropFatRefValueController
                                                    ?.reset();
                                                _model.dropFatAtuValueController
                                                    ?.reset();
                                              });
                                            }),
                                            Future(() async {
                                              safeSetState(() {
                                                _model.textDescrTextController
                                                    ?.clear();
                                                _model.textNumParcTextController
                                                    ?.text = '0';
                                                _model.textMesRefTextController
                                                    ?.text = '0';
                                                _model.textDataTextController
                                                    ?.clear();
                                              });
                                            }),
                                          ]);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Lançamento incluído com sucesso!',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                            ),
                                          );

                                          context.pushNamed('saldo_Cartao');
                                        },
                                        text: 'Salvar Edição',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 50.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Saldo: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      formatNumber(
                                        _model.resultado,
                                        formatType: FormatType.custom,
                                        currency: 'R\$',
                                        format: '#,##0.00',
                                        locale: 'pt_BR',
                                      ),
                                      '0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final listmov = _model.outGeral?.toList() ?? [];

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listmov.length,
                                  itemBuilder: (context, listmovIndex) {
                                    final listmovItem = listmov[listmovIndex];
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              elevation: 0.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                listmovItem
                                                                    .data,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          13.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  listmovItem
                                                                      .classificacao,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            13.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  listmovItem
                                                                      .subgrupo,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            13.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  listmovItem
                                                                      .tipo,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            13.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  formatNumber(
                                                                    listmovItem
                                                                        .valor,
                                                                    formatType:
                                                                        FormatType
                                                                            .custom,
                                                                    currency:
                                                                        'R\$ ',
                                                                    format:
                                                                        '#,##0.00',
                                                                    locale:
                                                                        'pt_BR',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            13.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
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
                                            ),
                                          ),
                                        ),
                                        Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.outFiltrado =
                                                                await MovimentacoesRecord
                                                                    .getDocumentOnce(
                                                                        listmovItem
                                                                            .reference);
                                                            FFAppState()
                                                                    .valueDouble =
                                                                listmovItem
                                                                    .valor;
                                                            safeSetState(() {});
                                                            FFAppState().popup =
                                                                true;
                                                            safeSetState(() {});
                                                            FFAppState()
                                                                .popup2 = false;
                                                            safeSetState(() {});
                                                            safeSetState(() {
                                                              _model.textDataTextController
                                                                      ?.text =
                                                                  listmovItem
                                                                      .data;
                                                              _model.textDataTextController
                                                                      ?.selection =
                                                                  TextSelection.collapsed(
                                                                      offset: _model
                                                                          .textDataTextController!
                                                                          .text
                                                                          .length);
                                                            });
                                                            safeSetState(() {
                                                              _model.textDescrTextController
                                                                      ?.text =
                                                                  _model
                                                                      .outFiltrado!
                                                                      .descricao;
                                                              _model.textDescrTextController
                                                                      ?.selection =
                                                                  TextSelection.collapsed(
                                                                      offset: _model
                                                                          .textDescrTextController!
                                                                          .text
                                                                          .length);
                                                            });
                                                            safeSetState(() {
                                                              _model.dropTipoValueController
                                                                      ?.value =
                                                                  _model
                                                                      .outFiltrado!
                                                                      .tipo;
                                                            });
                                                            safeSetState(() {
                                                              _model.dropClassValueController
                                                                      ?.value =
                                                                  _model
                                                                      .outFiltrado!
                                                                      .classificacao;
                                                            });
                                                            safeSetState(() {
                                                              _model.dropSubValueController
                                                                      ?.value =
                                                                  _model
                                                                      .outFiltrado!
                                                                      .subgrupo;
                                                            });
                                                            safeSetState(() {
                                                              _model.dropCartValueController
                                                                      ?.value =
                                                                  _model
                                                                      .outFiltrado!
                                                                      .carteira;
                                                            });
                                                            safeSetState(() {
                                                              _model.dropFixoValueController
                                                                      ?.value =
                                                                  _model
                                                                      .outFiltrado!
                                                                      .fixo;
                                                            });
                                                            safeSetState(() {
                                                              _model.dropParcValueController
                                                                      ?.value =
                                                                  listmovItem
                                                                      .parcelado;
                                                            });
                                                            safeSetState(() {
                                                              _model.textNumParcTextController
                                                                      ?.text =
                                                                  listmovItem
                                                                      .descritivoparc
                                                                      .toString();
                                                              _model.textNumParcTextController
                                                                      ?.selection =
                                                                  TextSelection.collapsed(
                                                                      offset: _model
                                                                          .textNumParcTextController!
                                                                          .text
                                                                          .length);
                                                            });

                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.edit_square,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .success,
                                                            size: 40.0,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await listmovItem
                                                                  .reference
                                                                  .delete();

                                                              context.pushNamed(
                                                                  'saldo_Cartao');
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .delete_forever_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              size: 40.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
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
      ),
    );
  }
}
