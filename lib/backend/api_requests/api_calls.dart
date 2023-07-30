import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

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
  }) {
    final body = '''
{
  "specification_hash": "66bc558d088d570ea5c2de741259eff908e89b97e70455e6213ffd1ba9d0f3df",
  "config": {
    "MODEL": {
      "provider_id": "openai",
      "model_id": "gpt-3.5-turbo-16k-0613",
      "use_cache": true
    }
  },
  "blocking": true,
  "inputs": [
    {
      "Topic": "${topic}",
      "direction": "${direction}",
      "numberOfWords": ${numberOfWords},
      "question": "${question}",
      "referencingStyle": "${referencingStyle}",
      "studentLevel": "${studentLevel}",
      "type": "${type}",
      "writingLevel": "${writingLevel}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LLMCall',
      apiUrl: 'https://dust.tt/api/v1/w/a46eba3e80/apps/ef59ce0812/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer sk-626f183191af6a787b3921ff080523e6',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
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
