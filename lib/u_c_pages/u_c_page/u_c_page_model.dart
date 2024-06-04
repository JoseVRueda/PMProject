import '/flutter_flow/flutter_flow_util.dart';
import 'u_c_page_widget.dart' show UCPageWidget;
import 'package:flutter/material.dart';

class UCPageModel extends FlutterFlowModel<UCPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
