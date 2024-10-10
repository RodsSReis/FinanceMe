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
import 'cria_transfer_model.dart';
export 'cria_transfer_model.dart';

class CriaTransferWidget extends StatefulWidget {
  const CriaTransferWidget({super.key});

  @override
  State<CriaTransferWidget> createState() => _CriaTransferWidgetState();
}

class _CriaTransferWidgetState extends State<CriaTransferWidget> {
  late CriaTransferModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriaTransferModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().valueDouble = 0.0;
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
      body: Column(
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
                            'Transferência ',
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
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.45,
                              child: TextFormField(
                                controller: _model.textDataTextController,
                                focusNode: _model.textDataFocusNode,
                                autofocus: true,
                                textCapitalization: TextCapitalization.none,
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.datetime,
                                validator: _model
                                    .textDataTextControllerValidator
                                    .asValidator(context),
                                inputFormatters: [_model.textDataMask],
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
                                fillColor: FlutterFlowTheme.of(context).primary,
                                icon: Icon(
                                  Icons.calendar_month,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  final datePickedDate = await showDatePicker(
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
                                            FlutterFlowTheme.of(context).info,
                                        headerTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
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
                                            FlutterFlowTheme.of(context).info,
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
                                        dateTimeFormat(
                                            "dd/MM/yyyy", _model.datePicked);
                                    _model.textDataTextController?.selection =
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: StreamBuilder<List<CarteirasRecord>>(
                        stream: queryCarteirasRecord(
                          queryBuilder: (carteirasRecord) => carteirasRecord
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
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<CarteirasRecord>
                              dropContaDebCarteirasRecordList = snapshot.data!;

                          return FlutterFlowDropDown<String>(
                            controller: _model.dropContaDebValueController ??=
                                FormFieldController<String>(null),
                            options: dropContaDebCarteirasRecordList
                                .map((e) => e.nomecarteira)
                                .toList()
                                .unique((e) => e),
                            onChanged: (val) => safeSetState(
                                () => _model.dropContaDebValue = val),
                            width: MediaQuery.sizeOf(context).width * 1.0,
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
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Conta Débito',
                            searchHintText: 'Search for an item...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 30.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
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
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: StreamBuilder<List<CarteirasRecord>>(
                        stream: queryCarteirasRecord(
                          queryBuilder: (carteirasRecord) => carteirasRecord
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
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<CarteirasRecord>
                              dropContaCredCarteirasRecordList = snapshot.data!;

                          return FlutterFlowDropDown<String>(
                            controller: _model.dropContaCredValueController ??=
                                FormFieldController<String>(null),
                            options: dropContaCredCarteirasRecordList
                                .map((e) => e.nomecarteira)
                                .toList()
                                .unique((e) => e),
                            onChanged: (val) => safeSetState(
                                () => _model.dropContaCredValue = val),
                            width: MediaQuery.sizeOf(context).width * 1.0,
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
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Conta Crédito',
                            searchHintText: 'Search for an item...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 30.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
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
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          height: 54.0,
                          child: custom_widgets.BrasilTextField(
                            width: MediaQuery.sizeOf(context).width * 0.5,
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
                            colorText: FlutterFlowTheme.of(context).primaryText,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            hintText: 'Valor',
                            borderRadius: 8,
                            borderSize: 2,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: TextFormField(
                        controller: _model.textDescrTextController,
                        focusNode: _model.textDescrFocusNode,
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
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                            ),
                        maxLines: 2,
                        maxLength: 200,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        validator: _model.textDescrTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            if (_model.datePicked == null) {
                              return;
                            }
                            if (_model.dropContaDebValue == null) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('Erro'),
                                    content:
                                        const Text('Preencher o campo Conta Débito'),
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
                            if (_model.dropContaCredValue == null) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('Erro'),
                                    content:
                                        const Text('Preencher o campo Conta Crédito'),
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

                            await MovimentacoesRecord.collection
                                .doc()
                                .set(createMovimentacoesRecordData(
                                  id: currentUserUid,
                                  datainput: getCurrentTimestamp,
                                  anoref: functions.spliteYear(
                                      _model.textDataTextController.text),
                                  mesref: functions.spliteMonth(
                                      _model.textDataTextController.text),
                                  tipo: 'RECEITA',
                                  classificacao: 'TRANSFERENCIA',
                                  subgrupo: 'CARTEIRA',
                                  descricao:
                                      _model.textDescrTextController.text,
                                  descritivoparc: 0,
                                  carteira: _model.dropContaCredValue,
                                  data: _model.textDataTextController.text,
                                  origem: 'CARTEIRA',
                                  faturaref: '-',
                                  valorparc: 0.0,
                                  datacalc: _model.datePicked,
                                  fixo: 'NAO',
                                  parcelado: 'NAO',
                                  valor: FFAppState().valueDouble,
                                ));

                            await MovimentacoesRecord.collection
                                .doc()
                                .set(createMovimentacoesRecordData(
                                  id: currentUserUid,
                                  datainput: getCurrentTimestamp,
                                  anoref: functions.spliteYear(
                                      _model.textDataTextController.text),
                                  mesref: functions.spliteMonth(
                                      _model.textDataTextController.text),
                                  tipo: 'DESPESA',
                                  classificacao: 'TRANSFERENCIA',
                                  subgrupo: 'CARTEIRA',
                                  descricao:
                                      _model.textDescrTextController.text,
                                  descritivoparc: 0,
                                  carteira: _model.dropContaDebValue,
                                  data: _model.textDataTextController.text,
                                  origem: 'CARTEIRA',
                                  faturaref: '-',
                                  valorparc: 0.0,
                                  datacalc: _model.datePicked,
                                  fixo: 'NAO',
                                  parcelado: 'NAO',
                                  valor: FFAppState().valueDouble,
                                ));
                            await Future.wait([
                              Future(() async {
                                safeSetState(() {
                                  _model.dropContaDebValueController?.reset();
                                  _model.dropContaCredValueController?.reset();
                                });
                              }),
                              Future(() async {
                                safeSetState(() {
                                  _model.textDescrTextController?.clear();
                                  _model.textDataTextController?.clear();
                                });
                              }),
                            ]);
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

                            context.pushNamed('cria_Transfer');
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
                                  fontWeight: FontWeight.w600,
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
