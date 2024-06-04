import '/flutter_flow/flutter_flow_util.dart';
import 'u_s_admin_widget.dart' show USAdminWidget;
import 'package:flutter/material.dart';

class USAdminModel extends FlutterFlowModel<USAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
