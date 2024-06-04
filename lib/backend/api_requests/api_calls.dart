import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start UsuarioSoporte Group Code

class UsuarioSoporteGroup {
  static String getBaseUrl() => 'https://retoolapi.dev/bmUKzA';
  static Map<String, String> headers = {};
  static GetUsuariosSoporteCall getUsuariosSoporteCall =
      GetUsuariosSoporteCall();
  static GetUsuariosSoporteFilterCall getUsuariosSoporteFilterCall =
      GetUsuariosSoporteFilterCall();
  static PutUsuariosSoporteCall putUsuariosSoporteCall =
      PutUsuariosSoporteCall();
  static CreateUsuariosSoporteCall createUsuariosSoporteCall =
      CreateUsuariosSoporteCall();
  static DeleteUsuariosSoporteCall deleteUsuariosSoporteCall =
      DeleteUsuariosSoporteCall();
}

class GetUsuariosSoporteCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UsuarioSoporteGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetUsuariosSoporte',
      apiUrl: '$baseUrl/usuario_soporte',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? password(dynamic response) => (getJsonField(
        response,
        r'''$[:].password''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? usid(dynamic response) => (getJsonField(
        response,
        r'''$[:].us_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetUsuariosSoporteFilterCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = UsuarioSoporteGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetUsuariosSoporteFilter',
      apiUrl: '$baseUrl/usuario_soporte',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  int? usid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].us_id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
}

class PutUsuariosSoporteCall {
  Future<ApiCallResponse> call({
    int? id,
    String? name = '',
    String? email = '',
    String? password = '',
    int? usId,
  }) async {
    final baseUrl = UsuarioSoporteGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": $id,
  "name": "$name",
  "email": "$email",
  "password": "$password",
  "us_id": $usId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PutUsuariosSoporte',
      apiUrl: '$baseUrl/usuario_soporte/$id',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUsuariosSoporteCall {
  Future<ApiCallResponse> call({
    int? id,
    String? name = '',
    String? email = '',
    String? password = '',
    int? usId,
  }) async {
    final baseUrl = UsuarioSoporteGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": $id,
  "name": "$name",
  "email": "$email",
  "password": "$password",
  "us_id": $usId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateUsuariosSoporte',
      apiUrl: '$baseUrl/usuario_soporte',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUsuariosSoporteCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = UsuarioSoporteGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteUsuariosSoporte',
      apiUrl: '$baseUrl/usuario_soporte/$id',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End UsuarioSoporte Group Code

/// Start Cliente Group Code

class ClienteGroup {
  static String getBaseUrl() => 'https://retoolapi.dev/2daNCV';
  static Map<String, String> headers = {};
  static GetClientesCall getClientesCall = GetClientesCall();
  static PutClientesCall putClientesCall = PutClientesCall();
  static CreateClientesCall createClientesCall = CreateClientesCall();
}

class GetClientesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ClienteGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetClientes',
      apiUrl: '$baseUrl/cliente',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? idcliente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id_cliente''',
      ));
}

class PutClientesCall {
  Future<ApiCallResponse> call({
    int? id,
    String? name = '',
    int? idCliente,
  }) async {
    final baseUrl = ClienteGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": $id,
  "name": "$name",
  "id_cliente": $idCliente
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PutClientes',
      apiUrl: '$baseUrl/cliente/$id',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateClientesCall {
  Future<ApiCallResponse> call({
    int? id,
    String? name = '',
    int? idCliente,
  }) async {
    final baseUrl = ClienteGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": $id,
  "name": "$name",
  "id_cliente": $idCliente
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateClientes',
      apiUrl: '$baseUrl/cliente',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Cliente Group Code

/// Start Reportes Group Code

class ReportesGroup {
  static String getBaseUrl() => 'https://retoolapi.dev/EGHulm';
  static Map<String, String> headers = {};
  static GetReportesCall getReportesCall = GetReportesCall();
  static GetReportesFilterCall getReportesFilterCall = GetReportesFilterCall();
  static PutReportesCall putReportesCall = PutReportesCall();
  static CreateReportesCall createReportesCall = CreateReportesCall();
}

class GetReportesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ReportesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetReportes',
      apiUrl: '$baseUrl/reporte',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? rate(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].rate''',
      ));
  int? usid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id_us''',
      ));
  String? usname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name_us''',
      ));
  int? clientid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id_cliente''',
      ));
  int? reportid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id_reporte''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].description''',
      ));
  String? clientname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name_cliente''',
      ));
  int? duration(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].duration''',
      ));
  String? starttime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].start_time''',
      ));
}

class GetReportesFilterCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = ReportesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetReportesFilter',
      apiUrl: '$baseUrl/reporte/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  int? rate(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.rate''',
      ));
  int? usid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_us''',
      ));
  String? usname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name_us''',
      ));
  int? duration(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.duration''',
      ));
  int? clientid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_cliente''',
      ));
  int? reportid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_reporte''',
      ));
  String? starttime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.start_time''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  String? clientname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name_cliente''',
      ));
}

class PutReportesCall {
  Future<ApiCallResponse> call({
    int? id,
    int? rate,
    String? nameUs = '',
    int? idCliente,
    int? idReporte,
    String? description = '',
    String? nameCliente = '',
    int? duration,
    String? startTime = '',
    int? idUs,
  }) async {
    final baseUrl = ReportesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": $id,
  "rate": $rate,
  "id_us": $idUs,
  "name_us": "$nameUs",
  "duration": $duration,
  "id_cliente": $idCliente,
  "id_reporte": $idReporte,
  "start_time": "$startTime",
  "description": "$description",
  "name_cliente": "$nameCliente"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PutReportes',
      apiUrl: '$baseUrl/reporte/$id',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateReportesCall {
  Future<ApiCallResponse> call({
    int? id,
    int? rate,
    String? nameUs = '',
    int? idCliente,
    int? idReporte,
    String? description = '',
    String? nameCliente = '',
    int? duration,
    String? startTime = '',
    int? idUs,
  }) async {
    final baseUrl = ReportesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": $id,
  "rate": $rate,
  "id_us": $idUs,
  "name_us": "$nameUs",
  "duration": $duration,
  "id_cliente": $idCliente,
  "id_reporte": $idReporte,
  "start_time": "$startTime",
  "description": "$description",
  "name_cliente": "$nameCliente"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateReportes',
      apiUrl: '$baseUrl/reporte',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Reportes Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
