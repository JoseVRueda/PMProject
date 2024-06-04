import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_report_widget.dart' show CreateReportWidget;
import 'package:flutter/material.dart';

class CreateReportModel extends FlutterFlowModel<CreateReportWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for idreporte widget.
  FocusNode? idreporteFocusNode;
  TextEditingController? idreporteTextController;
  String? Function(BuildContext, String?)? idreporteTextControllerValidator;
  String? _idreporteTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es requerido';
    }

    if (val.length < 4) {
      return 'La ID tiene que tener 4 caracteres';
    }
    if (val.length > 4) {
      return 'La ID tiene que tener 4 caracteres';
    }

    return null;
  }

  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es requerido';
    }

    return null;
  }

  // State field(s) for id widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  String? _idTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es requerido';
    }

    if (val.length < 4) {
      return 'La ID tiene que tener 4 caracteres';
    }
    if (val.length > 4) {
      return 'La ID tiene que tener 4 caracteres';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for JobDuration widget.
  FocusNode? jobDurationFocusNode;
  TextEditingController? jobDurationTextController;
  String? Function(BuildContext, String?)? jobDurationTextControllerValidator;
  String? _jobDurationTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es requerido';
    }

    return null;
  }

  // State field(s) for JobDescription widget.
  FocusNode? jobDescriptionFocusNode;
  TextEditingController? jobDescriptionTextController;
  String? Function(BuildContext, String?)?
      jobDescriptionTextControllerValidator;
  String? _jobDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es requerido';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (CreateReportes)] action in SubmitButton widget.
  ApiCallResponse? createReportes;
  // Stores action output result for [Backend Call - API (CreateClientes)] action in SubmitButton widget.
  ApiCallResponse? createClientes;

  @override
  void initState(BuildContext context) {
    idreporteTextControllerValidator = _idreporteTextControllerValidator;
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    idTextControllerValidator = _idTextControllerValidator;
    jobDurationTextControllerValidator = _jobDurationTextControllerValidator;
    jobDescriptionTextControllerValidator =
        _jobDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    idreporteFocusNode?.dispose();
    idreporteTextController?.dispose();

    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    idFocusNode?.dispose();
    idTextController?.dispose();

    jobDurationFocusNode?.dispose();
    jobDurationTextController?.dispose();

    jobDescriptionFocusNode?.dispose();
    jobDescriptionTextController?.dispose();
  }
}
