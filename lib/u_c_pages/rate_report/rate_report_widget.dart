import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'rate_report_model.dart';
export 'rate_report_model.dart';

class RateReportWidget extends StatefulWidget {
  const RateReportWidget({
    super.key,
    required this.id,
  });

  final int? id;

  @override
  State<RateReportWidget> createState() => _RateReportWidgetState();
}

class _RateReportWidgetState extends State<RateReportWidget> {
  late RateReportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RateReportModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: ReportesGroup.getReportesFilterCall.call(
        id: widget.id,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final rateReportGetReportesFilterResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Calificar Reporte',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).info,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.id.toString(),
                              style: FlutterFlowTheme.of(context)
                                  .displayMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 5.0),
                              child: Text(
                                'Datos del Cliente',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Text(
                              ReportesGroup.getReportesFilterCall
                                  .id(
                                    rateReportGetReportesFilterResponse
                                        .jsonBody,
                                  )
                                  .toString(),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                ReportesGroup.getReportesFilterCall.clientname(
                                  rateReportGetReportesFilterResponse.jsonBody,
                                ),
                                'a',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 5.0),
                              child: Text(
                                'Datos del Cliente',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Text(
                              ReportesGroup.getReportesFilterCall
                                  .usid(
                                    rateReportGetReportesFilterResponse
                                        .jsonBody,
                                  )
                                  .toString(),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                ReportesGroup.getReportesFilterCall.usname(
                                  rateReportGetReportesFilterResponse.jsonBody,
                                ),
                                'a',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 5.0)),
                        ),
                        Container(
                          width: 250.0,
                          constraints: const BoxConstraints(
                            maxWidth: 250.0,
                          ),
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text(
                                      'Descripción',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Descripción del problema: ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              ReportesGroup
                                                  .getReportesFilterCall
                                                  .description(
                                                rateReportGetReportesFilterResponse
                                                    .jsonBody,
                                              ),
                                              'a',
                                            ),
                                            style: const TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Duración en horas: ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              ReportesGroup
                                                  .getReportesFilterCall
                                                  .starttime(
                                                rateReportGetReportesFilterResponse
                                                    .jsonBody,
                                              ),
                                              'a',
                                            ),
                                            style: const TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Fecha de inicio: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        TextSpan(
                                          text: valueOrDefault<String>(
                                            ReportesGroup.getReportesFilterCall
                                                .starttime(
                                              rateReportGetReportesFilterResponse
                                                  .jsonBody,
                                            ),
                                            'a',
                                          ),
                                          style: const TextStyle(),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  if (_model.formKey.currentState == null ||
                                      !_model.formKey.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  _model.putReportes =
                                      await ReportesGroup.putReportesCall.call(
                                    id: widget.id,
                                    rate: _model.ratingBarValue?.round(),
                                    nameUs: ReportesGroup.getReportesFilterCall
                                        .usname(
                                      rateReportGetReportesFilterResponse
                                          .jsonBody,
                                    ),
                                    idCliente: ReportesGroup
                                        .getReportesFilterCall
                                        .clientid(
                                      rateReportGetReportesFilterResponse
                                          .jsonBody,
                                    ),
                                    idReporte: ReportesGroup
                                        .getReportesFilterCall
                                        .reportid(
                                      rateReportGetReportesFilterResponse
                                          .jsonBody,
                                    ),
                                    description: ReportesGroup
                                        .getReportesFilterCall
                                        .description(
                                      rateReportGetReportesFilterResponse
                                          .jsonBody,
                                    ),
                                    nameCliente: ReportesGroup
                                        .getReportesFilterCall
                                        .clientname(
                                      rateReportGetReportesFilterResponse
                                          .jsonBody,
                                    ),
                                    duration: ReportesGroup
                                        .getReportesFilterCall
                                        .duration(
                                      rateReportGetReportesFilterResponse
                                          .jsonBody,
                                    ),
                                    startTime: ReportesGroup
                                        .getReportesFilterCall
                                        .starttime(
                                      rateReportGetReportesFilterResponse
                                          .jsonBody,
                                    ),
                                    idUs: ReportesGroup.getReportesFilterCall
                                        .usid(
                                      rateReportGetReportesFilterResponse
                                          .jsonBody,
                                    ),
                                  );
                                  if ((_model.putReportes?.succeeded ?? true)) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Calificado'),
                                          content: const Text(
                                              'Reporte calificado exitosamente'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );

                                    context.pushNamed('ReportAdmin');
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          (_model.putReportes?.statusCode ??
                                                  200)
                                              .toString(),
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    );
                                  }

                                  setState(() {});
                                },
                                text: 'Calificar',
                                options: FFButtonOptions(
                                  width: 200.0,
                                  height: 50.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                            ]
                                .divide(const SizedBox(height: 150.0))
                                .addToStart(const SizedBox(height: 200.0)),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Calificación',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: RatingBar.builder(
                                onRatingUpdate: (newValue) => setState(
                                    () => _model.ratingBarValue = newValue),
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: FlutterFlowTheme.of(context).warning,
                                ),
                                direction: Axis.horizontal,
                                initialRating: _model.ratingBarValue ??=
                                    ReportesGroup.getReportesFilterCall
                                        .rate(
                                          rateReportGetReportesFilterResponse
                                              .jsonBody,
                                        )!
                                        .toDouble(),
                                unratedColor:
                                    FlutterFlowTheme.of(context).alternate,
                                itemCount: 5,
                                itemSize: 40.0,
                                glowColor: FlutterFlowTheme.of(context).warning,
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
          ),
        );
      },
    );
  }
}
