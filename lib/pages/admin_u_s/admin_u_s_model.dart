import '/flutter_flow/flutter_flow_util.dart';
import 'admin_u_s_widget.dart' show AdminUSWidget;
import 'package:flutter/material.dart';

class AdminUSModel extends FlutterFlowModel<AdminUSWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
