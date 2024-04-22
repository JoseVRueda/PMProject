import '/flutter_flow/flutter_flow_util.dart';
import 'admin_cliente_widget.dart' show AdminClienteWidget;
import 'package:flutter/material.dart';

class AdminClienteModel extends FlutterFlowModel<AdminClienteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
