import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_client_widget.dart' show EditClientWidget;
import 'package:flutter/material.dart';

class EditClientModel extends FlutterFlowModel<EditClientWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ID widget.
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

  // Stores action output result for [Backend Call - API (PutClientes)] action in SubmitButton widget.
  ApiCallResponse? putClientes;
  // Stores action output result for [Backend Call - API (DeleteClientes)] action in SubmitButton widget.
  ApiCallResponse? deleteUsuariosSoporte;

  @override
  void initState(BuildContext context) {
    idTextControllerValidator = _idTextControllerValidator;
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    idFocusNode?.dispose();
    idTextController?.dispose();

    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();
  }
}
