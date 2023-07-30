import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import '../cloud_functions/cloud_functions.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LLMCallCall {
  static Future<ApiCallResponse> call({
    String? topic = '',
    String? direction = '',
    int? numberOfWords,
    String? question = '',
    String? referencingStyle = '',
    String? studentLevel = '',
    String? type = '',
    String? writingLevel = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'LLMCallCall',
        'variables': {
          'topic': topic,
          'direction': direction,
          'numberOfWords': numberOfWords,
          'question': question,
          'referencingStyle': referencingStyle,
          'studentLevel': studentLevel,
          'type': type,
          'writingLevel': writingLevel,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.run.results[:][:].value''',
      );
}

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
