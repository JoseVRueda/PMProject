import '/flutter_flow/flutter_flow_util.dart';
import 'client_admin_widget.dart' show ClientAdminWidget;
import 'package:flutter/material.dart';

class ClientAdminModel extends FlutterFlowModel<ClientAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
