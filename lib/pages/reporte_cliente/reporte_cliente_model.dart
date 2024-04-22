import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'reporte_cliente_widget.dart' show ReporteClienteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ReporteClienteModel extends FlutterFlowModel<ReporteClienteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nombreCompleto widget.
  FocusNode? nombreCompletoFocusNode;
  TextEditingController? nombreCompletoTextController;
  String? Function(BuildContext, String?)?
      nombreCompletoTextControllerValidator;
  String? _nombreCompletoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for edad widget.
  FocusNode? edadFocusNode;
  TextEditingController? edadTextController;
  String? Function(BuildContext, String?)? edadTextControllerValidator;
  // State field(s) for numeroTelefono widget.
  FocusNode? numeroTelefonoFocusNode;
  TextEditingController? numeroTelefonoTextController;
  String? Function(BuildContext, String?)?
      numeroTelefonoTextControllerValidator;
  // State field(s) for fechaNacimiento widget.
  FocusNode? fechaNacimientoFocusNode;
  TextEditingController? fechaNacimientoTextController;
  final fechaNacimientoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      fechaNacimientoTextControllerValidator;
  String? _fechaNacimientoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for inicioTrabajo widget.
  FocusNode? inicioTrabajoFocusNode;
  TextEditingController? inicioTrabajoTextController;
  final inicioTrabajoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? inicioTrabajoTextControllerValidator;
  // State field(s) for duracionTrabajo widget.
  FocusNode? duracionTrabajoFocusNode;
  TextEditingController? duracionTrabajoTextController;
  final duracionTrabajoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      duracionTrabajoTextControllerValidator;
  // State field(s) for descripcionReporte widget.
  FocusNode? descripcionReporteFocusNode;
  TextEditingController? descripcionReporteTextController;
  String? Function(BuildContext, String?)?
      descripcionReporteTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nombreCompletoTextControllerValidator =
        _nombreCompletoTextControllerValidator;
    fechaNacimientoTextControllerValidator =
        _fechaNacimientoTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nombreCompletoFocusNode?.dispose();
    nombreCompletoTextController?.dispose();

    edadFocusNode?.dispose();
    edadTextController?.dispose();

    numeroTelefonoFocusNode?.dispose();
    numeroTelefonoTextController?.dispose();

    fechaNacimientoFocusNode?.dispose();
    fechaNacimientoTextController?.dispose();

    inicioTrabajoFocusNode?.dispose();
    inicioTrabajoTextController?.dispose();

    duracionTrabajoFocusNode?.dispose();
    duracionTrabajoTextController?.dispose();

    descripcionReporteFocusNode?.dispose();
    descripcionReporteTextController?.dispose();
  }
}
