import '/flutter_flow/flutter_flow_util.dart';
import 'u_s_page_widget.dart' show USPageWidget;
import 'package:flutter/material.dart';

class USPageModel extends FlutterFlowModel<USPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
