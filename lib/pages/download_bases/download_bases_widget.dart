import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'download_bases_model.dart';
export 'download_bases_model.dart';

class DownloadBasesWidget extends StatefulWidget {
  const DownloadBasesWidget({super.key});

  @override
  State<DownloadBasesWidget> createState() => _DownloadBasesWidgetState();
}

class _DownloadBasesWidgetState extends State<DownloadBasesWidget> {
  late DownloadBasesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DownloadBasesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.outMovimentacoes =
                        await queryMovimentacoesRecordOnce(
                      queryBuilder: (movimentacoesRecord) =>
                          movimentacoesRecord.where(
                        'ID',
                        isEqualTo: currentUserUid,
                      ),
                    );
                    await actions.downloadCollectionAsCSV(
                      _model.outMovimentacoes?.toList(),
                    );

                    safeSetState(() {});
                  },
                  text: 'Movimentações',
                  options: FFButtonOptions(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  _model.outClass = await queryClassificacoesRecordOnce();
                  await actions.downloadClassAsCSV(
                    _model.outClass?.toList(),
                  );

                  safeSetState(() {});
                },
                text: 'Classificações',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
