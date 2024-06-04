import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_u_s_widget.dart' show EditUSWidget;
import 'package:flutter/material.dart';

class EditUSModel extends FlutterFlowModel<EditUSWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for id widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  String? _idTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es requerido';
    }

    if (val.length < 4) {
      return 'El ID tiene que tener 4 caracteres';
    }
    if (val.length > 4) {
      return 'El ID tiene que tener 4 caracteres';
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

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'El correo electrónico no es válid';
    }
    return null;
  }

  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es requerido';
    }

    if (val.length < 6) {
      return 'La contraseña requiere al menos 6 caracteres';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (GetUsuariosSoporteNameFilter)] action in SubmitButton widget.
  ApiCallResponse? getUsuariosSoporteNameFilter;
  // Stores action output result for [Backend Call - API (PutUsuariosSoporte)] action in SubmitButton widget.
  ApiCallResponse? putUsuariosSoporte;
  // Stores action output result for [Backend Call - API (DeleteUsuariosSoporte)] action in SubmitButton widget.
  ApiCallResponse? deleteUsuariosSoporte;

  @override
  void initState(BuildContext context) {
    idTextControllerValidator = _idTextControllerValidator;
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    idFocusNode?.dispose();
    idTextController?.dispose();

    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
