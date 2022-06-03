import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class SuicideCall {
  static Future<ApiCallResponse> call({
    String diaryText = 'iam happy',
  }) {
    final body = '''
{
  "text": " ${diaryText}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'suicide',
      apiUrl: 'https://suicidedetection.herokuapp.com/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'diaryText': diaryText,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class EmotionDetectionCall {
  static Future<ApiCallResponse> call({
    String text1 = 'Iam good',
  }) {
    final body = '''
{
  "text": "${text1}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EmotionDetection',
      apiUrl: 'https://emotiondetect123.herokuapp.com/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'text1': text1,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
