import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'saldo_carteiras_model.dart';
export 'saldo_carteiras_model.dart';

class SaldoCarteirasWidget extends StatefulWidget {
  const SaldoCarteirasWidget({super.key});

  @override
  State<SaldoCarteirasWidget> createState() => _SaldoCarteirasWidgetState();
}

class _SaldoCarteirasWidgetState extends State<SaldoCarteirasWidget> {
  late SaldoCarteirasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaldoCarteirasModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().popup = false;
      safeSetState(() {});
      FFAppState().popup2 = false;
      safeSetState(() {});
    });

    _model.textDataTextController ??= TextEditingController();
    _model.textDataFocusNode ??= FocusNode();

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
              Container(
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Saldos Contas',
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
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: StreamBuilder<List<CarteirasRecord>>(
                              stream: queryCarteirasRecord(
                                queryBuilder: (carteirasRecord) =>
                                    carteirasRecord
                                        .where(
                                          'ID',
                                          isEqualTo: currentUserUid,
                                        )
                                        .orderBy('NOMECARTEIRA'),
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
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<CarteirasRecord>
                                    listViewCarteirasRecordList =
                                    snapshot.data!;

                                return ListView.separated(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5.0),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: listViewCarteirasRecordList.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(width: 5.0),
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewCarteirasRecord =
                                        listViewCarteirasRecordList[
                                            listViewIndex];
                                    return Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
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
                                                          listViewCarteirasRecord
                                                              .nomecarteira
                                                              .maybeHandleOverflow(
                                                                  maxChars: 20),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                lineHeight: 2.0,
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
                                                            MainAxisSize.max,
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
                                                            onTap: () async {
                                                              _model.outRec =
                                                                  await queryMovimentacoesRecordOnce(
                                                                queryBuilder: (movimentacoesRecord) =>
                                                                    movimentacoesRecord
                                                                        .where(
                                                                          'TIPO',
                                                                          isEqualTo:
                                                                              'RECEITA',
                                                                        )
                                                                        .where(
                                                                          'CARTEIRA',
                                                                          isEqualTo:
                                                                              listViewCarteirasRecord.nomecarteira,
                                                                        )
                                                                        .where(
                                                                          'ID',
                                                                          isEqualTo:
                                                                              currentUserUid,
                                                                        )
                                                                        .where(
                                                                          'ORIGEM',
                                                                          isEqualTo:
                                                                              'CARTEIRA',
                                                                        ),
                                                              );
                                                              _model.outDesp =
                                                                  await queryMovimentacoesRecordOnce(
                                                                queryBuilder: (movimentacoesRecord) =>
                                                                    movimentacoesRecord
                                                                        .where(
                                                                          'TIPO',
                                                                          isEqualTo:
                                                                              'DESPESA',
                                                                        )
                                                                        .where(
                                                                          'CARTEIRA',
                                                                          isEqualTo:
                                                                              listViewCarteirasRecord.nomecarteira,
                                                                        )
                                                                        .where(
                                                                          'ID',
                                                                          isEqualTo:
                                                                              currentUserUid,
                                                                        )
                                                                        .where(
                                                                          'ORIGEM',
                                                                          isEqualTo:
                                                                              'CARTEIRA',
                                                                        ),
                                                              );
                                                              await Future
                                                                  .wait([
                                                                Future(
                                                                    () async {
                                                                  _model.minhasReceitas = _model
                                                                      .outRec!
                                                                      .map((e) =>
                                                                          valueOrDefault<
                                                                              double>(
                                                                            e.valor,
                                                                            0.0,
                                                                          ))
                                                                      .toList()
                                                                      .cast<
                                                                          double>();
                                                                  safeSetState(
                                                                      () {});
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  _model.minhasDespesas = _model
                                                                      .outDesp!
                                                                      .map((e) =>
                                                                          valueOrDefault<
                                                                              double>(
                                                                            e.valor,
                                                                            0.0,
                                                                          ))
                                                                      .toList()
                                                                      .cast<
                                                                          double>();
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
                                                                queryBuilder: (movimentacoesRecord) =>
                                                                    movimentacoesRecord
                                                                        .where(
                                                                          'CARTEIRA',
                                                                          isEqualTo:
                                                                              listViewCarteirasRecord.nomecarteira,
                                                                        )
                                                                        .where(
                                                                          'ID',
                                                                          isEqualTo:
                                                                              currentUserUid,
                                                                        )
                                                                        .where(
                                                                          'ORIGEM',
                                                                          isEqualTo:
                                                                              'CARTEIRA',
                                                                        )
                                                                        .orderBy(
                                                                            'DATACALC',
                                                                            descending:
                                                                                true),
                                                              );

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Icon(
                                                              Icons.list_alt,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                          GradientText(
                                                            'Extrato',
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
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
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
                                                            onTap: () async {
                                                              FFAppState()
                                                                  .popup = true;
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
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                          GradientText(
                                                            'Incluir Novo',
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
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (FFAppState().popup == true)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Container(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.45,
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
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          icon: Icon(
                                            Icons.calendar_month,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
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
                                                            fontSize: 32.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
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
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropTipoValueController ??=
                                              FormFieldController<String>(null),
                                      options: const ['DESPESA', 'RECEITA'],
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropTipoValue = val),
                                      width: MediaQuery.sizeOf(context).width *
                                          0.45,
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
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
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
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    StreamBuilder<List<MovimentacoesRecord>>(
                                      stream: queryMovimentacoesRecord(
                                        queryBuilder: (movimentacoesRecord) =>
                                            movimentacoesRecord
                                                .where(
                                                  'TIPO',
                                                  isEqualTo:
                                                      _model.dropTipoValue,
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
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
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropClassValue = val),
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.45,
                                          height: 40.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 0.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
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
                                          options:
                                              dropSubMovimentacoesRecordList
                                                  .map((e) => e.subgrupo)
                                                  .toList()
                                                  .unique((e) => e),
                                          onChanged: (val) => safeSetState(
                                              () => _model.dropSubValue = val),
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.45,
                                          height: 40.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 0.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    StreamBuilder<List<CarteirasRecord>>(
                                      stream: queryCarteirasRecord(
                                        queryBuilder: (carteirasRecord) =>
                                            carteirasRecord
                                                .where(
                                                  'ID',
                                                  isEqualTo: currentUserUid,
                                                )
                                                .orderBy('NOMECARTEIRA'),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<CarteirasRecord>
                                            dropCartCarteirasRecordList =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropCartValueController ??=
                                              FormFieldController<String>(null),
                                          options: dropCartCarteirasRecordList
                                              .map((e) => e.nomecarteira)
                                              .toList()
                                              .unique((e) => e),
                                          onChanged: (val) => safeSetState(
                                              () => _model.dropCartValue = val),
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.45,
                                          height: 40.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Carteira',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 0.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                    FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropFixoValueController ??=
                                              FormFieldController<String>(null),
                                      options: const ['NAO', 'SIM'],
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropFixoValue = val),
                                      width: MediaQuery.sizeOf(context).width *
                                          0.45,
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
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height: 40.0,
                                  child: custom_widgets.BrasilTextField(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.5,
                                    height: 40.0,
                                    value: FFAppState().valueDouble.toString(),
                                    filledColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 14.0,
                                    colorText: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    hintText: 'Valor',
                                    borderRadius: 8,
                                    borderSize: 2,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    child: TextFormField(
                                      controller:
                                          _model.textDescrTextController,
                                      focusNode: _model.textDescrFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Descrição',
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
                                      maxLines: 2,
                                      maxLength: 200,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .textDescrTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().popup2 == true)
                                      FFButtonWidget(
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
                                                  .textDescrTextController.text,
                                              carteira: _model.dropCartValue,
                                              descritivoparc: 0,
                                              anoref: functions.spliteYear(
                                                  _model.textDataTextController
                                                      .text),
                                              mesref: functions.spliteMonth(
                                                  _model.textDataTextController
                                                      .text),
                                              data: _model
                                                  .textDataTextController.text,
                                              origem: 'CARTEIRA',
                                              faturaref: '-',
                                              valorparc: 0.0,
                                              fixo: _model.dropFixoValue,
                                              parcelado: 'NAO',
                                              datacalc: _model.datePicked,
                                              valor: FFAppState().valueDouble,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'DATAINPUT': FieldValue
                                                    .serverTimestamp(),
                                              },
                                            ),
                                          });
                                          await Future.wait([
                                            Future(() async {
                                              safeSetState(() {
                                                _model.dropClassValueController
                                                    ?.reset();
                                                _model.dropSubValueController
                                                    ?.reset();
                                                _model.dropCartValueController
                                                    ?.reset();
                                                _model.dropFixoValueController
                                                    ?.reset();
                                                _model.dropTipoValueController
                                                    ?.reset();
                                              });
                                            }),
                                            Future(() async {
                                              safeSetState(() {
                                                _model.textDescrTextController
                                                    ?.clear();
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

                                          context.pushNamed('saldo_Carteiras');
                                        },
                                        text: 'Salvar Novo',
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
                                    if (FFAppState().popup2 == false)
                                      FFButtonWidget(
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
                                            anoref: functions.spliteYear(_model
                                                .textDataTextController.text),
                                            id: currentUserUid,
                                            mesref: functions.spliteMonth(_model
                                                .textDataTextController.text),
                                            descritivoparc: 0,
                                            origem: 'CARTEIRA',
                                            faturaref: '-',
                                            valorparc: 0.0,
                                            parcelado: 'NAO',
                                            fixo: _model.dropFixoValue,
                                            datacalc: _model.datePicked,
                                            valor: FFAppState().valueDouble,
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
                                              });
                                            }),
                                            Future(() async {
                                              safeSetState(() {
                                                _model.textDescrTextController
                                                    ?.clear();
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

                                          context.pushNamed('saldo_Carteiras');
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 800.0,
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
                                          child: Card(
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
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              listmovItem.data,
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
                                                              MainAxisSize.max,
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
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                            highlightColor:
                                                                Colors
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
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState()
                                                                  .popup = true;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState()
                                                                      .popup2 =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
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

                                                              safeSetState(
                                                                  () {});
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
                                                                    'saldo_Carteiras');
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .delete_forever_sharp,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
