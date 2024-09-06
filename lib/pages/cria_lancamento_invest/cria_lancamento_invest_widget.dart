import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'cria_lancamento_invest_model.dart';
export 'cria_lancamento_invest_model.dart';

class CriaLancamentoInvestWidget extends StatefulWidget {
  const CriaLancamentoInvestWidget({super.key});

  @override
  State<CriaLancamentoInvestWidget> createState() =>
      _CriaLancamentoInvestWidgetState();
}

class _CriaLancamentoInvestWidgetState
    extends State<CriaLancamentoInvestWidget> {
  late CriaLancamentoInvestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriaLancamentoInvestModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primary,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 0.8,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 40.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Investimentos ',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 30.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).primaryBackground,
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController1,
                      focusNode: _model.textFieldFocusNode1,
                      autofocus: true,
                      textCapitalization: TextCapitalization.none,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Data',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Data',
                        hintStyle: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 18.0,
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
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                          ),
                      keyboardType: TextInputType.datetime,
                      validator:
                          _model.textController1Validator.asValidator(context),
                      inputFormatters: [_model.textFieldMask1],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController1 ??=
                          FormFieldController<String>(null),
                      options: const ['APORTE', 'RESGATE'],
                      onChanged: (val) =>
                          safeSetState(() => _model.dropDownValue1 = val),
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 56.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Tipo',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 32.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: StreamBuilder<List<ClassificacoesInvestRecord>>(
                      stream: queryClassificacoesInvestRecord(
                        queryBuilder: (classificacoesInvestRecord) =>
                            classificacoesInvestRecord
                                .where(
                                  'TIPO',
                                  isEqualTo: _model.dropDownValue1,
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<ClassificacoesInvestRecord>
                            dropDownClassificacoesInvestRecordList =
                            snapshot.data!;

                        return FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController2 ??=
                              FormFieldController<String>(null),
                          options: dropDownClassificacoesInvestRecordList
                              .map((e) => e.classificacao)
                              .toList()
                              .unique((e) => e),
                          onChanged: (val) =>
                              safeSetState(() => _model.dropDownValue2 = val),
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Classificação',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 32.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: StreamBuilder<List<ClassificacoesInvestRecord>>(
                      stream: queryClassificacoesInvestRecord(
                        queryBuilder: (classificacoesInvestRecord) =>
                            classificacoesInvestRecord
                                .where(
                                  'CLASSIFICACAO',
                                  isEqualTo: _model.dropDownValue2,
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<ClassificacoesInvestRecord>
                            dropDownClassificacoesInvestRecordList =
                            snapshot.data!;

                        return FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController3 ??=
                              FormFieldController<String>(null),
                          options: dropDownClassificacoesInvestRecordList
                              .map((e) => e.subgrupo)
                              .toList()
                              .unique((e) => e),
                          onChanged: (val) =>
                              safeSetState(() => _model.dropDownValue3 = val),
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Sub Grupo',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 32.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: StreamBuilder<List<CarteirasRecord>>(
                          stream: queryCarteirasRecord(
                            queryBuilder: (carteirasRecord) =>
                                carteirasRecord.orderBy('NOMECARTEIRA'),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<CarteirasRecord> dropDownCarteirasRecordList =
                                snapshot.data!;

                            return FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController4 ??=
                                  FormFieldController<String>(null),
                              options: dropDownCarteirasRecordList
                                  .map((e) => e.nomecarteira)
                                  .toList()
                                  .unique((e) => e),
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownValue4 = val),
                              width: MediaQuery.sizeOf(context).width * 0.4,
                              height: 56.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
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
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Conta',
                              searchHintText: 'Search for an item...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: StreamBuilder<List<CarteiraInvestRecord>>(
                          stream: queryCarteiraInvestRecord(
                            queryBuilder: (carteiraInvestRecord) =>
                                carteiraInvestRecord.orderBy('NOMECARTEIRA'),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<CarteiraInvestRecord>
                                dropDownCarteiraInvestRecordList =
                                snapshot.data!;

                            return FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController5 ??=
                                  FormFieldController<String>(null),
                              options: dropDownCarteiraInvestRecordList
                                  .map((e) => e.nomecarteira)
                                  .toList()
                                  .unique((e) => e),
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownValue5 = val),
                              width: MediaQuery.sizeOf(context).width * 0.4,
                              height: 56.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
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
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Carteira',
                              searchHintText: 'Search for an item...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController2,
                      focusNode: _model.textFieldFocusNode2,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Valor',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Valor',
                        hintStyle: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 18.0,
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
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                          ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      validator:
                          _model.textController2Validator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController3,
                      focusNode: _model.textFieldFocusNode3,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Descrição',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Descrição',
                        hintStyle: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 18.0,
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
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                          ),
                      maxLines: 2,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      validator:
                          _model.textController3Validator.asValidator(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                await MovimentacaoInvestRecord.collection.doc().set({
                  ...createMovimentacaoInvestRecordData(
                    id: currentUserUid,
                    tipo: _model.dropDownValue1,
                    classificacao: _model.dropDownValue1,
                    subgrupo: _model.dropDownValue3,
                    descricao: _model.textController3.text,
                    carteira: _model.dropDownValue4,
                    anoref: functions.spliteYear(_model.textController1.text),
                    mesref: functions.spliteMonth(_model.textController1.text),
                    data: _model.textController1.text,
                    valor: double.tryParse(_model.textController2.text),
                  ),
                  ...mapToFirestore(
                    {
                      'DATAINPUT': FieldValue.serverTimestamp(),
                    },
                  ),
                });

                await MovimentacoesRecord.collection
                    .doc()
                    .set(createMovimentacoesRecordData(
                      id: currentUserUid,
                      datainput: getCurrentTimestamp,
                      anoref: functions.spliteYear(_model.textController1.text),
                      mesref:
                          functions.spliteMonth(_model.textController1.text),
                      classificacao: 'TRANSFERENCIA',
                      subgrupo: 'INVESTIMENTO',
                      descricao: _model.textController3.text,
                      fixo: false,
                      parcelado: false,
                      descritivoparc: 0,
                      carteira: _model.dropDownValue4,
                      data: _model.textController1.text,
                      valor: double.tryParse(_model.textController2.text),
                      origem: 'CARTEIRA',
                      tipo: _model.dropDownValue1 == 'APORTE'
                          ? 'DESPESA'
                          : 'RECEITA',
                    ));
                await Future.wait([
                  Future(() async {
                    safeSetState(() {
                      _model.dropDownValueController1?.reset();
                      _model.dropDownValueController3?.reset();
                      _model.dropDownValueController4?.reset();
                      _model.dropDownValueController5?.reset();
                      _model.dropDownValueController2?.reset();
                    });
                  }),
                  Future(() async {
                    safeSetState(() {
                      _model.textController1?.clear();
                      _model.textController2?.clear();
                      _model.textController3?.clear();
                    });
                  }),
                ]);
              },
              text: 'Salvar Lançamento',
              options: FFButtonOptions(
                height: 50.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).info,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 30.0,
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
          Align(
            alignment: const AlignmentDirectional(1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('cria_ClassiInvest');
                },
                child: Icon(
                  Icons.add_box,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 50.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
