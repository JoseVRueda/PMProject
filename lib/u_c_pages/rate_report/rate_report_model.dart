import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'rate_report_widget.dart' show RateReportWidget;
import 'package:flutter/material.dart';

class RateReportModel extends FlutterFlowModel<RateReportWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (PutReportes)] action in SubmitButton widget.
  ApiCallResponse? putReportes;
  // Stores action output result for [Backend Call - API (GetUsuariosSoporteNameFilter)] action in SubmitButton widget.
  ApiCallResponse? getUsuariosSoporteNameFilter;
  // Stores action output result for [Backend Call - API (PutUsuariosSoporte)] action in SubmitButton widget.
  ApiCallResponse? putUsuariosSoporte;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
